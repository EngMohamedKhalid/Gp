<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\FavBook;
use App\Helper\ApiResponse;
use Illuminate\Http\Request;

class FavBookController extends Controller
{
    public function favbook($id)
    {
        $user = auth()->user();
        if (!$user) {
            return ApiResponse::sendresponse(404, "Unauthorized");
        }
        $checkfav = FavBook::where('user_id',$user->id)->where('book_id',$id)->first();
        if($checkfav){
            $checkfav->delete();
            return ApiResponse::sendresponse(200, "remove this book from fav list");
        }else{
            $fav = FavBook::create([
                "book_id" => $id,
                "user_id" => $user->id
            ]);
            return ApiResponse::sendresponse(200, "Add this book from fav list");
        }
    }
    public function favbooklist()
    {
        $user = auth()->user();
        if (!$user) {
            return ApiResponse::sendresponse(404, "Unauthorized");
        }
        $checkfav = FavBook::where('user_id',$user->id)->get();
        $data = [];
        foreach($checkfav as $item){
            $book = Book::where('id',$item->book_id)->first();
            $data[] = [
                "book_id" => $book->id,
                "book_name" => $book->name,
                "author_name" => $book->author->name,
                "book_price" => $book->price,
                "image" => asset($book->image),
                "rate" => $book->rate,
                "fav" => 1
            ];
        }
        return ApiResponse::sendresponse(200, "show list fav",$data);
    }

}
