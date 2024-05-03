<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\Cart;
use App\Helper\ApiResponse;
use Illuminate\Http\Request;
use App\Http\Resources\ChekoutResource;

class CartController extends Controller
{
    public function AddToCard(Request $request)
    {
        $user = auth()->user();
        $bookIds = json_decode($request->Book_id);
        if (!$user) {
            return ApiResponse::sendresponse(404, "Unauthorized");
        }
        $card = Cart::where('user_id', $user->id)->first();
        $book = Book::where('id', $bookIds)->first();
        if (!$book) {
            return ApiResponse::sendresponse(401, "This book not invalid");
        }
        $qtyvalue = 1;
        if ($card) {
            if(in_array($bookIds,$card->Book_ids)){
                return ApiResponse::sendresponse(401, "This book in card already");
            }
            $card->Book_ids = array_merge($card->Book_ids,(array)$bookIds);
            $card->Book_price = array_merge($card->Book_price,(array)$book->price);
            $card->Book_qtys = array_merge($card->Book_qtys,(array)$qtyvalue);
            $card->count = $card->count + 1;
            $card->save();
            $card->total_price = array_sum($card->Book_price);
            $card->price_after_shiping = $card->total_price + 30;
            $card->save();
        } else {
            $card = Cart::create([
                "user_id" => $user->id,
                "Book_ids" => [$bookIds],
                "Book_price" => [$book->price],
                "Book_qtys" => [$qtyvalue],
                "count" => 1,
                "shiping" => 50,
                "total_price" => $book->price,
                "price_after_shiping" => $book->price + 50
            ]);
        }
        return ApiResponse::sendresponse(200, "Add book to cart",$card);
    }


    public function showcard()
    {
        $user = auth()->user();
        if (!$user) {
            return ApiResponse::sendresponse(404, "Unauthorized");
        }
        $card = Cart::where('user_id',$user->id)->first();
        $cardids = $card->Book_ids;
        $bookincard = [];
        foreach($cardids as $index=>$id){
            $book = Book::where('id',$id)->first();
            $qty = $card->Book_qtys[$index];
            $bookincard[] = [
                "book_id" => $book->id,
                "book_name" => $book->name,
                "author_name" => $book->author->name,
                "book_price" => $book->price,
                "qty" =>$qty
            ];

        }
        return ApiResponse::sendresponse(200, "show card",[
            "count" => $card->count ,
            "card_id" => $card->id ,
            "item" => $bookincard,
            "subtotal" => $card->total_price,
            "shiping" => $card->shiping,
            "total" => $card->price_after_shiping,
        ]);
    }

    public function change(Request $request)
    {
        $user = auth()->user();
        if (!$user) {
            return ApiResponse::sendresponse(404, "Unauthorized");
        }
        $card = Cart::where('user_id',$user->id)->first();
        $cardIds = $card->Book_ids;
        $cardQtys = $card->Book_qtys;
        $cardPrice = $card->Book_price;
        $book = Book::where('id',$request->book_id)->first();
        $index = array_search($request->book_id, $cardIds);
        if ($index !== false) {
            $cardQtys[$index] += $request->qty;
            if($request->qty > 0){
                $cardPrice[$index] += $book->price;
            }else{
                $cardPrice[$index] -= $book->price;
            }
            $card->Book_qtys = $cardQtys;
            $card->Book_price = $cardPrice;
            $card->total_price = array_sum($card->Book_price);
            $card->price_after_shiping = $card->total_price + 30;
            $card->save();
        }
        return redirect()->route('showcard');
    }

    public function checkout($card_id){
        $user = auth()->user();
        if (!$user) {
            return ApiResponse::sendresponse(404, "Unauthorized");
        }
        $card = Cart::where('id',$card_id)->where('user_id',$user->id)->first();
        $data = [
            "cart_id" => $card->id,
            "address" => $user->address,
            "total_price" => $card->price_after_shiping
        ];
        return ApiResponse::sendresponse(200, "show data in checkout page",$data);
    }
}
