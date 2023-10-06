<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class Profile extends Authenticatable {

    use Notifiable,
        HasApiTokens;



    use HasFactory,
        Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $table = "profile_pics";
    protected $fillable = [
        'fkUserId ',
        'filename',
    ];
    protected $appends = ['filename_url'];

    public function getFilenameUrlAttribute() {
        $source_url = "";

        if (isset($this->attributes['filename']) && !empty($this->attributes['filename'])) {

            $source_url = url('storage/app/public/Materials/' . $this->attributes['filename']);
        }
        return $source_url;
    }

}
