<?php

namespace App\Http\Controllers\API\Client;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use App\Models\Profile;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\API\BaseController;
use App\Models\Project;
use App\Models\Dashboard;

class DashboardController extends BaseController {

    public function view() {
        $user_id = Auth::user()->id;

        $project_id = Auth::user()->p_id;


        $user = User::paginate(5);

        return view('table', ['dashboard' => $dashboard])
                        ->with('i', (request()->input('page', 1) - 1) * 5);
    }

    public function dashboard() {
        $user_id = Auth::user()->id;
//       

        $projects = Dashboard::select('project_title', 'status', 'end_time', 's_ids')->where('c_id', $user_id)->paginate(10);
 echo "<pre>";
 print_r($projects);
 exit;

        return $this->sendResponse($projects, 'Get Projects has been Successfully');
    }

}
