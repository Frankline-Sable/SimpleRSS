<?php

namespace App\Http\Controllers;

use App\Application;
use App\Feed;
use App\Vacancy;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class VacancyController extends Controller
{
    public function __construct()
    {
        //$this->middleware('auth');
    }

    public function index()
    {
        $vacancies = Vacancy::orderBy('created_at', 'DESC')->paginate(3);
        $user = Auth::user();

        $this->updateFeeds();
        return view('vacancy.index', compact('vacancies', 'user'));
    }

    public function show($vacancy)
    {

        $user = Auth::user();
        $vacancy = Vacancy::find($vacancy);
        return view('vacancy.show', compact('vacancy','user'));
    }

    public function create()
    {
        return view('vacancy.create');
    }

    public function store()
    {
        $data = request()->validate([
            'title' => 'required',
            'company' => 'required',
            'location' => 'required',
            'category' => 'required',
            'expires_on' => 'required',
            'vacancies' => 'required',
            'salary' => 'required',
            'education_level' => 'required',
        ]);

        Vacancy::create($data);

        return redirect('/');
    }

    public function apply()
    {
        $user = Auth::user();
        $vacancy = Vacancy::find(request()->vacancy_id);


        Application::create([
            "user_id" => $user->id,
            "vacancy_id" => $vacancy->id
        ]);

        return redirect('/vacancy/'.$vacancy->id);

    }

    function updateFeeds(){
        foreach(Vacancy::all() as $vacancy){
            Feed::create([
                "title"=>$vacancy->title,
                "description"=>"New job in ".$vacancy->location,
                "author"=>$vacancy->company
            ]);
        }
    }
}
