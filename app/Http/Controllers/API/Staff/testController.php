<?php

namespace App\Http\Controllers\API\Client;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Models\Profile;
use Illuminate\Support\Facades\Auth;

class testController extends BaseController {

    public function Dashboard(Request $request) {
        
    }

    public function profile(Request $request) {
        echo "<pre>";
        print_r("asd");
        exit;

        $user_id = Auth::user()->id;

        $error = $this->validations($request, "profile");

        if ($error['error']) {

            $error = $error['errors']->first();
            return $this->sendError($error, [], 500);
        } else {

            $user = User::where('id', $user_id)->count();
echo "<pre>";
print_r($user);
exit;
            if ($user) {

                $user = User::where('id', $user_id)->first();

                $profile = new Profile;
               
                if ($request->hasFile('filename')) {

                    $image = $request->file('filename');
                    $name = $image->getClientOriginalName();
                    $destinationPath = storage_path('app/public/Profile_Image');
                    $image->move($destinationPath, $name);

                    $profile->filename = $name;
                }


                $user->id = $user_id;
                $user->firstName = $request->firstName;
                $user->email = $request->email;
                $user->city = $request->city;
                $user->state = $request->state;
                $user->zip = $request->zip;
                $user->country = $request->country;
                $user->password = $request->password;
                $user['password'] = bcrypt($user['password']);

                $user->save();

                return $this->sendResponse([], 'Profile Updated Successfully');
            }

            return $this->sendResponse([], 'Profile Inserted Successfully');
        }
    }

}
