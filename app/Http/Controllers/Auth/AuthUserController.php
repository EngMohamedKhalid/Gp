<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use Lcobucci\JWT\Token;
use App\Helper\ApiResponse;
use Illuminate\Http\Request;
use App\Http\Requests\LoginRequest;
use App\Http\Controllers\Controller;
use App\Http\Requests\RegisterRequest;
use App\Http\Resources\ProfileResource;
use App\Http\Requests\resertpasswordRequest;
use App\Notifications\ForgetPaawordNotification;
use Illuminate\Support\Facades\Hash;

class AuthUserController extends Controller
{
    public function register(RegisterRequest $request)
    {
        $user = User::create([
            "username" => $request->username,
            "email" => $request->email,
            "password" => Hash::make($request->password),
            "address" => $request->address
        ]);
        return ApiResponse::sendresponse(200,"register sucessfully go to login",$user);
    }

    public function login(LoginRequest $request)
    {
        $credentials = request(['email','password']);
        if (! $token = auth()->attempt($credentials)) {
            return ApiResponse::sendresponse(404,"This email or password not invalid");
        }
        return ApiResponse::sendresponse(200,"login sucessfully",[
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth()->factory()->getTTL() * 60
        ]);
    }

    public function logout()
    {
        auth()->logout();
        return ApiResponse::sendresponse(200,"logout sucessfully");
    }

    public function profile()
    {
        $user = auth()->user();
        if (!$user) {
            return ApiResponse::sendresponse(404,"Unauthorized");
        }
        return ApiResponse::sendresponse(200,"show profile sucessfully",new ProfileResource($user));
    }

    public function editprofile(Request $request)
    {
        $user = auth()->user();
        if (!$user) {
            return ApiResponse::sendresponse(404,"Unauthorized");
        }
        $user->username = $request->username;
        $user->address = $request->address;
        $user->email = $request->email;
        $user->save();
        return ApiResponse::sendresponse(200,"update profile sucessfully",new ProfileResource($user));
    }

    public function resetpassword(resertpasswordRequest $request)
    {
        $user = User::where('email',$request->email)->first();
        $user->notify(new ForgetPaawordNotification());
        return ApiResponse::sendresponse(200,"Check Your Email Please And Use Code");
    }
}
