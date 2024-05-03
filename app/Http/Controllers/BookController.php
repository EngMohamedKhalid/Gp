<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Helper\ApiResponse;
use Illuminate\Http\Request;
use App\Http\Resources\BookByCategoryResource;
use App\Models\FavBook;

class BookController extends Controller
{
    public function databook($book, $user)
    {
        $data = [];
        foreach ($book as $item) {
            $checfav = FavBook::where('book_id', $item->id)->where('user_id', $user->id)->exists();
            if ($checfav) {
                $fav = 1;
            } else {
                $fav = 0;
            }
            $data[] =  [
                "id" => $item->id,
                "name" => $item->name,
                "image" => asset($item->image),
                "Author_name" => $item->author->name,
                "rate" => $item->rate,
                "price" => $item->price,
                "fav" => $fav
            ];
        }
        return $data;
    }
    public function index()
    {
        $user = auth()->user();
        if (!$user) {
            return ApiResponse::sendresponse(404, "Unauthorized");
        }
        $book = Book::all();
        $data = $this->databook($book, $user);
        return ApiResponse::sendresponse(200, "show all book", $data);
    }
    public function showbycategory($id)
    {
        $user = auth()->user();
        if (!$user) {
            return ApiResponse::sendresponse(404, "Unauthorized");
        }
        $book = Book::where('category_id', $id)->get();
        $data = $this->databook($book, $user);
        return ApiResponse::sendresponse(200, "show book by category", $data);
    }

    public function indexdetails($id)
    {
        $user = auth()->user();
        if (!auth()->user()) {
            return ApiResponse::sendresponse(404, "Unauthorized");
        }
        $book = Book::where('id', $id)->first();
        $checfav = FavBook::where('book_id', $book->id)->where('user_id', $user->id)->exists();
        if ($checfav) {
            $fav = 1;
        } else {
            $fav = 0;
        }
        return ApiResponse::sendresponse(200, "show details book", [
            "id" => $book->id,
            "name" => $book->name,
            "image" => asset($book->image),
            "Author_name" => $book->author->name,
            "rate" => $book->rate,
            "price" => $book->price,
            "about" => $book->about_book,
            "fav" => $fav
        ]);
    }
}
