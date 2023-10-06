<?php

namespace App\Http\Controllers\API\Staff;

use Illuminate\Http\UploadedFile;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use App\Models\Profile;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\API\BaseController;
use Illuminate\Support\Facades\Storage;

class ProfileController extends BaseController {

    public function validations($request, $type) {

        $errors = [];

        $error = false;

        if ($type == "profile") {

            $validator = Validator::make($request->all(), [
                        'firstName' => 'required',
                        'title' => 'required',
                        'phone' => 'required',
            ]);

            if ($validator->fails()) {

                $error = true;

                $errors = $validator->errors();
            }
        } elseif ($type == "editprofile") {

            $validator = Validator::make($request->all(), [
                        'filename' => 'required',
            ]);

            if ($validator->fails()) {

                $error = true;

                $errors = $validator->errors();
            }
        }
        return ["error" => $error, "errors" => $errors];
    }

    public function profile(Request $request) {

        $user_id = Auth::user()->id;


        $error = $this->validations($request, "profile");

        if ($error['error']) {

            $error = $error['errors']->first();

            return $this->sendError($error, [], 500);
        } else {


            $user = User::where('id', $user_id)->first();




            $user->id = $user_id;
            $user->firstName = $request->firstName;
            $user->title = $request->title;
            $user->phone = $request->phone;
            $user->save();

            return $this->sendResponse([], 'Profile Updated Successfully');
        }
    }

    public function get_profiledata() {

        $user_id = Auth::user()->id;


        $user = User::select('firstName', 'title', 'phone')->where('id', $user_id)->paginate(10);

        return $this->sendResponse($user, 'Get Client Data has been Successfully');
    }

    public function edit_photo(Request $request) {





        $error = $this->validations($request, "editprofile");

        if ($error['error']) {

            $error = $error['errors']->first();

            return $this->sendError($error, [], 500);
        } else {

            if ($request->type == "php") {

                $user_id = 31;
                $data = $request->all();


                $profile = Profile::where('fkUserId', '=', $user_id)->first();
                $target_path = storage_path('app/public/Profile_Image');
                $target_path = $target_path . basename($data['filename']['name']);

                if (move_uploaded_file($data['filename']['tmp_name'], $target_path)) {
                    echo "<pre>";
                    print_r("oooasdjdadsajdjsad");
                    exit;
                } else {
                    echo "<pre>";
                    print_r("SDffS");
                    exit;
                }

                $array['url'] = $target_path;
                return $this->sendResponse($array, 'Photos Updated Successfully');
            } else {


                $user_id = Auth::user()->id;
                $profile = Profile::where('fkUserId', '=', $user_id)->first();

                if ($request->hasFile('filename')) {
                    $image = $request->file('filename');

                    $name = $image->getClientOriginalName();
                    $destinationPath = storage_path('app/public/Profile_Image');
                    $image->move($destinationPath, $name);
                    $profile->filename = $name;
                    $profile->save();

                    return $this->sendResponse([], 'Photos Updated Successfully');
                }
            }
        }
    }

    public function liststaff() {
        $user_id = Auth::user()->id;


        $staff = DB::select("select `id`, `firstName`, `title` from users where role_id != 2 AND id != $user_id");

        return $this->sendResponse($staff, 'Get ProjectsWorker has been Successfully');
    }

    public function getSearchResults(Request $request) {
        $user_id = Auth::user()->id;
        $data = $request->get('data');

        $search_drivers = User::select('id','firstName','title')->where('id', $user_id)
                ->first();
echo "<pre>";
print_r($search_drivers->toarray());
exit;
        return $this->sendResponse($search_drivers, 'Get ProjectsWorker has been Successfully');

//        return Response::json([
//                    'data' => $search_drivers
//        ]);
    }

}
