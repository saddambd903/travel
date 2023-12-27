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

                <form action="{{Route('update-blog',$blog->id)}}" method="post" enctype="multipart/form-data">
                    @csrf
                    @method('put')
                <h1>Update Old Blog</h1>
                <div class="row">
                <div class="col">
                    <label for="exampleInputEmail1" class="form-label">Image Alt Tag</label>
                    <input type="text" class="form-control" name="alt_tag" placeholder="Alt Tag" aria-label="First name" value="{{$blog->alt_tag}}">
                </div>
                <div class="col">
                    <label for="exampleInputEmail1" class="form-label" >Image Title</label>
                    <input type="text" class="form-control" name="title" placeholder="Image Title" aria-label="Last name" value="{{$blog->title}}">
                </div>
                </div>


                <div class="mb-3">
                    <label  class="form-label">Upload Image</label>
                    <input  type="file"  class="form-control form-control-sm" name="blog_image" >
                    <img img src="{{ url('uplods/blog/'.$blog->blog_image) }}" class="images" style="width: 200px;
                    height: 150px;">
                </div>

                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label" >Blog URL</label>
                    <input type="text" class="form-control" name="blog_title" placeholder="Blog title Should be unique" aria-label="Last name" value="{{$blog->blog_title}}">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label" >Blog Header</label>
                    <input type="text" class="form-control" name="blog_header" placeholder="Blog Header" aria-label="Last name" value="{{$blog->blog_header}}">
                </div>

                <div class="mb-3">
                    <textarea name="longText"  id="summary-ckeditor"> {!!$blog->longText!!} </textarea>
                </div>
                <button type="submit" class="btn btn-outline-warning" style="float: right;">Update Blog</button>
                
                </form>
            </div>
            <div class="col-md-3"></div>
        
        </div>
    </div>
</section>


@endsection


