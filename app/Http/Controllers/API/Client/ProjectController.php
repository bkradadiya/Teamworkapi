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

class ProjectController extends BaseController {


    
    public function view() {
        $user_id = Auth::user()->id;



        $project_id = Auth::user()->p_id;


        $user = User::paginate(5);

        return view('table', ['project' => $project])
                        ->with('i', (request()->input('page', 1) - 1) * 5);
    }

    public function listclientProject() {
        $user_id = Auth::user()->id;


        $projects = Project::where('c_id', $user_id)->paginate(10);

        return $this->sendResponse($projects, 'Get Projects has been Successfully');
    }

}
