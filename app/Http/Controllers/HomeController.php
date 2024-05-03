<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Helper\ApiResponse;
use App\Http\Resources\AuthorResource;
use Illuminate\Http\Request;
use App\Http\Resources\BookResource;
use App\Models\Author;
use App\Models\Category;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function home()  {
        if(!auth()->user()){
            return ApiResponse::sendresponse(404,"Unauthorized");
        }
        $popular = Book::where('popular','1')->get();
        $best = Book::OrderBy('count_sale',"desc")->get();
        $category = DB::table('categories')->join('books','books.category_id','categories.id')
        ->select('categories.id as category_id','categories.name as category_name','books.*','authors.name as author_name')
        ->leftJoin('authors', 'books.author_id', '=', 'authors.id')
        ->groupBy('categories.id', 'categories.name', 'books.id')
        ->get();
        $data = [];

        foreach ($category as $categoryBook) {
            if (!isset($data[$categoryBook->category_name])) {
                $data[$categoryBook->category_name] = [
                    'categoryname' => $categoryBook->category_name,
                    'category_id' => $categoryBook->category_id,
                    'books' => []
                ];
            }
            $data[$categoryBook->category_name]['books'][] = [
                'book_id' => $categoryBook->id,
                'book_name' => $categoryBook->name,
                'book_image' => asset($categoryBook->image),
                'Author_name' => $categoryBook->author_name
            ];
        }
        return ApiResponse::sendresponse(200,"show home",[
            "popular" => BookResource::collection($popular),
            "best_sellar" => BookResource::collection($best),
            "category_with_book" => $data
        ]);

    }


    public function search(Request $request)
    {
        if(!auth()->user()){
            return ApiResponse::sendresponse(404,"Unauthorized");
        }
        $author = Author::where('name','like',"%$request->name%")->get();
        $book = Book::where('name','like',"%$request->name%")->get();
        return ApiResponse::sendresponse(200,"search sucessfully",[
            "result_author" => AuthorResource::collection($author),
            "result_book" => BookResource::collection($book)
        ]);

    }
}
