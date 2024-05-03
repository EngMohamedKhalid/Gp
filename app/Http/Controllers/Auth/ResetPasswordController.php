<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use Ichtrojan\Otp\Otp;
use App\Helper\ApiResponse;
use Illuminate\Http\Request;
use App\Http\Requests\LoginRequest;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use App\Providers\RouteServiceProvider;
use App\Http\Requests\VerificationEmailRequest;

class ResetPasswordController extends Controller
{
    private $otp;

    public function __construct()
    {
        $this->otp = new Otp;
    }

    public function confirmOtp(Request $request){
        $otp2 = $this->otp->validate($request->email , $request->otp);
        if(!$otp2->status){
            return ApiResponse::sendresponse(442,"this Otp code invaild",$otp2) ;
        }
        $user = User::where('email', $request->email)->first();
        $user->email_verified_at = now();
        $user->save();
        return ApiResponse::sendresponse(200,"correct code",$user);
    }


    public function passwordreset(LoginRequest $request){
        $user = User::where('email', $request->email)->first();
        if($user->email_verified_at === null){
            return ApiResponse::sendresponse(422,"This accout not verifcation");
        }
        $user->password = Hash::make($request->password);
        $user->save();
        return ApiResponse::sendresponse(200,"correct code",$user);
    }



}
