@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">

                    <div class="card-header d-flex justify-content-between">
                        Current Vacancies
                        <div class="d-flex">
                            <div>

                                @if($user!=null && $user->role_id==1 )
                                    <a href='/vacancy/create'><i class="fa fa-plus"></i> Post </a>
                                @endif
                            </div>

                            <a class="pl-4" style="color: #c74f34" href="/feeds.rss">
                                <i class="fa fa-rss" aria-hidden="true"></i><sup>!</sup>
                            </a>
                        </div>
                    </div>
                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif

                        @foreach($vacancies as $vacancy)
                            <a class="w-100 py-2 d-flex justify-content-end" href="/vacancy/{{$vacancy->id}}">
                                <div class="w-100 py-2 d-flex">
                                    <div class="">
                                        <i class="fa-5x  fa fa-briefcase text-dark"></i>
                                    </div>
                                    <div class="pl-2">
                                        <div>
                                            <h4 class="text-capitalize">{{$vacancy->title}}</h4>
                                        </div>
                                        <div>
                                            <h5 class="text-capitalize">{{$vacancy->company}}</h5>
                                        </div>
                                        <div>
                                            <small><i class="fa fa-map-marker"></i> {{$vacancy->location}}</small>
                                        </div>
                                    </div>
                                </div>

                                <div>
                                    <div class="text-capitalize">
                                        <nobr>
                                            Salary Ksh. {{number_format(($vacancy->salary), 2, '.', ',')}}</nobr>
                                    </div>
                                    <div class="text-right">
                                        <small>
                                            <nobr>
                                                2 Days ago
                                            </nobr>
                                        </small>
                                    </div>
                                    <div class="text-capitalize">
                                        <nobr>
                                            Vacancies {{$vacancy->vacancies}}</nobr>
                                    </div>
                                    <div class="text-capitalize">
                                        <nobr>
                                            <i class="fa fa-graduation-cap"></i> {{$vacancy->education_level}}</nobr>
                                    </div>
                                </div>

                            </a>
                            <hr>
                        @endforeach

                        <div class="row">
                            <div class="col-12 d-flex justify-content-center">
                                {{ $vacancies->links() }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection



