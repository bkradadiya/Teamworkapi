<?php

namespace App\Http\Controllers\API\Staff;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use App\Models\Profile;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\API\BaseController;
use App\Models\Project;

class ProjectController extends BaseController {

    public function view() {
        $user_id = Auth::user()->id;



        $project_id = Auth::user()->p_id;


        $user = User::paginate(5);

        return view('table', ['project' => $project])
                        ->with('i', (request()->input('page', 1) - 1) * 5);
    }

    public function liststaffProject() {
        $user_id = Auth::user()->id;

        $projects = DB::select("select  `c_id`, `s_ids`, `project_title`,`status`, `end_time` from projects WHERE FIND_IN_SET('$user_id', s_ids) > 0");




//        if ($st_ids != 1 && $st_ids != $recentProject->c_id && $st_ids != 0) {
//
//            $counter++;
//            if ($counter > 3) {
//                
//            } else {
//
//                $user2 = user::findById($st_ids);
//
//                global $db;
//
//                $query = $db->query("SELECT filename FROM profile_pics WHERE fkUserId = '$st_ids'");
//             
//                $row1 = mysqli_fetch_array($query);
//               
//            }
//        }

        return $this->sendResponse($projects, 'Get Projects has been Successfully');
    }

}
