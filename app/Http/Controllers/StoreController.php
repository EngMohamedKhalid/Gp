<?php

namespace App\Http\Controllers;

use App\Models\Store;
use App\Helper\ApiResponse;
use Illuminate\Http\Request;
use App\Http\Resources\LocationResource;

class StoreController extends Controller
{
    public function index(){
        $user = auth()->user();
        if (!$user) {
            return ApiResponse::sendresponse(404, "Unauthorized");
        }
        $store = Store::all();
        return ApiResponse::sendresponse(200, "show data in checkout page",LocationResource::collection($store));

    }
}
