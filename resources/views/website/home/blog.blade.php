@extends('website.master')
@section('body')
<section class="all-blog">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="all-blog-hero">
                    <h1>Read Our Blogs</h1>
                </div>
            </div>
        </div>  
    </div>
</section>

<section class="all-blog-text">
    <div class="container">
        <div class="row">
            @foreach($blogs as $blog)
            <div class="col-md-6">
                <div class="home-single-blog">
                    <img src="{{ url('uplods/blog/'. $blog->blog_image)}}" alt="{{$blog->alt_tag}}" title="{{$blog->title}}" class="img-fluid" style="height: 400px;">
                    <div class="all-blog-text-details">
                       
                        <h1>{!!  Str::limit($blog->blog_header, 25) !!}</h1>
                        <p>{!!  Str::limit($blog->longText, 180) !!}</p>
                        <a href="{{Route('blog-details',$blog->blog_title)}}"><p style="padding-bottom: 20px;">Read more....</p></a>
                </div>
                </div>
            </div>
            @endforeach
           
        </div>  
    </div>
</section>


@endsection
