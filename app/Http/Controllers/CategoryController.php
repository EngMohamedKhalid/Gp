<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Helper\ApiResponse;
use Illuminate\Http\Request;
use App\Http\Resources\CategoryResource;

class CategoryController extends Controller
{
    public function index()
    {
        if(!auth()->user()){
            return ApiResponse::sendresponse(404,"Unauthorized");
        }
        $category = Category::all();
        return ApiResponse::sendresponse(200,"Show all category",CategoryResource::collection($category));
    }
}
