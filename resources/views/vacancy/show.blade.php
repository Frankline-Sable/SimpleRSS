@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header text-capitalize">Job Description</div>

                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif

                        <div class="w-100 d-flex justify-content-between">
                            <div class="d-flex">
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


                            <div class="my-auto">
                                @if($user!=null)
                                    @if(\App\Application::where([["user_id","=",$user->id],["vacancy_id","=",$vacancy->id]])->get()->count()>0)
                                        <button class="btn btn-primary text-white" disabled>
                                            Applied <i class="fa fa-check"></i></button>
                                    @else
                                        <a class="btn btn-primary text-white"
                                           href="{{route('apply-vacancy',['vacancy_id'=>$vacancy->id])}}">Apply Job</a>
                                    @endif
                                @else
                                    <a class="btn btn-primary text-white"
                                       href="{{route('apply-vacancy',['vacancy_id'=>$vacancy->id])}}">Apply Job</a>

                                @endif

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


@endsection
