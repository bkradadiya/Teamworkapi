<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class Dashboard extends Authenticatable {

    use Notifiable,
        HasApiTokens;



    use HasFactory,
        Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $table = "projects";
    protected $fillable = [
        'p_id',
        'c_id ',
        's_ids',
        'project_title',
        'project_desc',
        'budget',
        'status',
        'archive',
        'trash',
        'start_time',
        'end_time',
    ];
    protected $appends = ['assignteam'];
        

    public function user() {
        return $this->hasOne('App\Models\User', 'id', 'user_id');
    }

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function getAssignteamAttribute() {

        $assignteam = User::select('id', 'firstName')->whereIn('id', explode(',', $this->attributes['s_ids']))->whereNotIn('role_id', [1, 2])->get();

        return $assignteam;
    }

}


