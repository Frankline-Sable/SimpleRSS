@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header text-capitalize">Post Job vacancy</div>
                    <div class="card-body">
                        <form action="/vacancy" enctype="multipart/form-data" method="post">
                            @csrf

                            <div class="row">
                                <div class="col-8 offset-2">

                                    <div class="row ">
                                        <div class="py-4">
                                            <h1 class="pb-8 mb-8 ">
                                                <u>Fill in the job data</u>
                                            </h1>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="title" class="col-md-4 col-form-label">Title</label>

                                        <input id="title"
                                               type="text"
                                               class="form-control{{ $errors->has('title') ? ' is-invalid' : '' }}"
                                               name="title"
                                               value="{{ old('title') }}"
                                               autocomplete="title" autofocus required>

                                        @if ($errors->has('title'))
                                            <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('title') }}</strong>
                        </span>
                                        @endif
                                    </div>

                                    <div class="form-group row">
                                        <label for="company" class="col-md-4 col-form-label">Company</label>

                                        <input id="company"
                                               type="text"
                                               class="form-control{{ $errors->has('company') ? ' is-invalid' : '' }}"
                                               name="company"
                                               value="{{ old('company') }}"
                                               autocomplete="company" autofocus required>

                                        @if ($errors->has('company'))
                                            <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('company') }}</strong>
                        </span>
                                        @endif
                                    </div>

                                    <div class="form-group row">
                                        <label for="location" class="col-md-4 col-form-label">Location</label>

                                        <input id="location"
                                               type="text"
                                               class="form-control{{ $errors->has('location') ? ' is-invalid' : '' }}"
                                               name="location"
                                               value="{{ old('location') }}"
                                               autocomplete="location" autofocus required>

                                        @if ($errors->has('location'))
                                            <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('location') }}</strong>
                        </span>
                                        @endif
                                    </div>

                                    <div class="form-group row">
                                        <label for="category" class="col-md-4 col-form-label">Category</label>

                                        <select id="category" class="form-control" name="category"
                                                required>
                                            <option class="" value="">Select Job Category</option>
                                            @foreach(\App\JobCategory::all() as $type)
                                                <option value="{{$type->type}}">{{$type->type}}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="form-group row">
                                        <label for="expires_on" class="col-md-12 col-form-label">Valid Until</label>
                                        <input id="date_picker"
                                               type="date"
                                               class="form-control"
                                               name="expires_on" required>

                                    </div>


                                    <div class="form-group row">
                                        <label for="vacancies" class="col-md-4 col-form-label">No of Vacancies</label>

                                        <input id="vacancies"
                                               type="number"
                                               class="form-control{{ $errors->has('vacancies') ? ' is-invalid' : '' }}"
                                               name="vacancies"
                                               value="1" min="1" max="100"
                                               autocomplete="vacancies" autofocus required>

                                        @if ($errors->has('vacancies'))
                                            <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('vacancies') }}</strong>
                        </span>
                                        @endif
                                    </div>

                                    <div class="form-group row">
                                        <label for="salary" class="col-md-4 col-form-label">Salary/Payment</label>

                                        <input id="salary"
                                               type="number"
                                               class="form-control{{ $errors->has('salary') ? ' is-invalid' : '' }}"
                                               name="salary"
                                               value="{{ old('salary') }}"
                                               autocomplete="salary" autofocus>

                                        @if ($errors->has('salary'))
                                            <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('salary') }}</strong>
                        </span>
                                        @endif
                                    </div>

                                    <div class="form-group row">
                                        <label for="education_level" class="col-md-4 col-form-label">Minimum Education
                                            Level</label>


                                        <select id="education_level"
                                                class="form-control{{ $errors->has('education_level') ? ' is-invalid' : '' }}"
                                                name="education_level" autofocus>
                                            <option value="Certificate">Certificate</option>
                                            <option value="Diploma" selected>Diploma</option>
                                            <option value="Degree">Degree</option>
                                            <option value="Masters">Masters</option>
                                        </select>

                                        @if ($errors->has('education_level'))
                                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('education_level') }}</strong>
                            </span>
                                        @endif
                                    </div>


                                    <div class="d-flex justify-content-between pt-4">
                                        <button class="btn btn-primary" type="submit">Post Vacancy</button>
                                        <button class="btn btn-danger" type="reset">Reset</button>
                                    </div>

                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
