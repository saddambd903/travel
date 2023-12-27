@extends('layouts.app')
@section('title', 'Manage Faq')
@section('body')

<section class="image-uploder">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <!----- for massage validation-------->

                @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
            <!--------for message from controller--->
                @if(session()->has('message'))
                <div class="alert alert-{{session('type')}} alert-dismissible fade show" role="alert">
                {{ session('message')}}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
                @endif

                <form action="{{Route('store')}}" method="post" enctype="multipart/form-data">
                    @csrf
                <h1>Add New Blog</h1>
                <div class="row">
                <div class="col">
                    <label for="exampleInputEmail1" class="form-label">Image Alt Tag</label>
                    <input type="text" class="form-control" name="alt_tag" placeholder="Alt Tag" aria-label="First name" value="{{old('alt_tag')}}">
                </div>
                <div class="col">
                    <label for="exampleInputEmail1" class="form-label" >Image Title</label>
                    <input type="text" class="form-control" name="title" placeholder="Image Title" aria-label="Last name" value="{{old('title')}}">
                </div>
                </div>


                <div class="mb-3">
                    <label  class="form-label">Upload Image</label>
                    <input class="form-control form-control-sm" name="blog_image"  type="file" value="{{old('blog_image')}}">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label" >Blog URL</label>
                    <input type="text" class="form-control" name="blog_title" placeholder="Blog title Should be unique" aria-label="Last name" value="{{old('blog_title')}}">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label" >Blog Header</label>
                    <input type="text" class="form-control" name="blog_header" placeholder="Blog Header" aria-label="Last name" value="{{old('blog_header')}}">
                </div>

                <div class="mb-3">
                    <textarea name="longText"  id="summary-ckeditor" value="{{old('longText')}}"></textarea>
                </div>
                <button type="submit" class="btn btn-outline-warning" style="margin: 0 auto; display: block;padding: 6px 50px;">Add Blog</button>
                
                </form>
            </div>
            <div class="col-md-3"></div>
            
        </div>
    </div>
</section>

@endsection


