<?php

namespace App\Http\Controllers;

use App\Models\Author;
use App\Helper\ApiResponse;
use Illuminate\Http\Request;
use App\Http\Resources\AuthorResource;

class AuthorController extends Controller
{
    public function index()
    {
        if(!auth()->user()){
            return ApiResponse::sendresponse(404,"Unauthorized");
        }
        $author = Author::all();
        return ApiResponse::sendresponse(200,"show all Author",AuthorResource::collection($author));
    }
}
