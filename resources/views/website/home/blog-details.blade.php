@extends('website.master')
@section('body')

<section class="single-blog-page">
    <div class="container">
        <div class="row">
            <div class="col-md-2">
                <div class="table-comtent">
                    <p>Table of Content</p>
                    <ul>
                        @foreach($blogs as $blog)
                        <li><a href="{{Route('blog-details',$blog->blog_title)}}">{!! $blog->blog_header !!}</a></li>
                       @endforeach
                        
                    </ul>
                </div>
            </div>
            <div class="col-md-10">
                <div class="single-blog-info">
                    <img src="{{ url('uplods/blog/'. $blogs_deatils->blog_image)}}" alt="{{$blogs_deatils->alt_tag}}" title="{{$blogs_deatils->title}}" class="img-fluid">
                    <div class="single-blog-details">
                        <h1>{!! $blogs_deatils->blog_header !!}</h1>
                        <p>{!!  $blogs_deatils->longText !!}</p>
                </div>
                </div>
            </div>
            
        </div>  
    </div>
</section>


@endsection
