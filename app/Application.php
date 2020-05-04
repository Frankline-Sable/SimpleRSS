<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Application extends Model
{
    protected $guarded = [];
    public function user()
    {
        $this->belongsTo(User::class);
    }
    public function vacancy()
    {
        $this->hasOne(Vacancy::class);
    }
}
