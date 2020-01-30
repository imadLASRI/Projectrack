<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Emaginproject extends Model
{
    public function modules(){
        return $this->hasMany(Projectmodule::class);
    }
}
