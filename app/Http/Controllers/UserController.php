<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Helper\ApiResponse;
use Illuminate\Http\Request;
use App\Http\Resources\UsersResource;

class UserController extends Controller
{
    public function index(){
        $user = auth()->user();
        if (!$user) {
            return ApiResponse::sendresponse(404, "Unauthorized");
        }
        $users = User::all();
        return ApiResponse::sendresponse(200, "show all user",UsersResource::collection($users));
    }
}
