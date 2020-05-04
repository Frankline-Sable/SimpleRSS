<?php

namespace App\Http\Controllers;

use App\Feed;
use Illuminate\Http\Request;

class FeedsController extends Controller
{

    public function show(Request $request, Feed $feed)
    {
        return $feed;
    }
}
