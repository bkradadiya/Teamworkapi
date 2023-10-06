<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Http\Controllers\API\BaseController;

class AuthController extends BaseController {

    public function login(Request $request) {


        $validator = Validator::make($request->all(), [
                    'email' => 'required|string|email|max:255|exists:users',
                    'password' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('Validation Error.', $validator->errors());
        }

        $data = $request->all();


        $username = "";

        if (filter_var($request->input('email'), FILTER_VALIDATE_EMAIL)) {
            $username = ['email' => $request->input('email'), 'password' => $request->input('password'),
        'role_id' => [2,3]];
                
        }


        if (Auth::attempt($username)) {


            $user = Auth::user();

            $success['name'] = $user->firstName;
            $success['email'] = $user->email;
            $success['token'] = $user->createToken('teamwork')->accessToken;




            return $this->sendResponse($success, 'You have been successfully Login!');
        } else {


            $response = 'Incorrect username or password';
            return $this->sendError($response);
        }
    }

  public function logout(Request $request)
{
    $request->user()->token()->revoke();

    return response()->json([
        'message' => 'Successfully logged out'
    ]);
}

}
