@extends('website.master')

@section('body')

    <section class="">
        <div class="container py-5">

            <!--amazing places to enjoy section start here-->
            <div class="card px-5 py-4 footer-gradiant mb-5">
                <div class="row">
                        <div class="col-md-6 py-5">
                            <h1 class="amaazing fw-bolder text-uppercase text-white ">Amazing places to <br>enjoy your Travel</h1>
                            <p class="text-white ">Picture yourself wandering through ancient cobblestone streets, surrounded by historical architecture that whispers tales of centuries past. Feel the exhilaration of standing atop majestic mountains, breathing in the crisp, invigorating air as you take in panoramic views that stretch beyond imagination.</p>
                            <a href="{{ route('website.places') }}" class="btn btn-lg btn-outline-warning border-3 fw-bold  mt-2 px-4 me-5">Explore More</a>
                        </div>
                        <div class="col-md-6 d-flex justify-content-end align-content-end">
                            <img width="400px" class="img-fluid" src="{{asset('/')}}assets/front/img/sittingman.png" alt="">
                        </div>
                
                
                    
                </div>
            </div>

            <!--amazing places to enjoy section End here-->
        </div>
    </section>



   {{--  
    <section class="">
        <div class="container">
            <div class="row ">
                <h1 class="amaazing fw-bolder text-uppercase text-center text-uppercase mb-5">Most popular tours for you</h1>
            </div>
            <div class="row  justify-content-center">
                  
                <div class="text-end">
                    <a class="btn btn-warning mb-3 mr-1" href="#carouselExampleIndicators2" role="button" data-slide="prev">
                        <i class="fa fa-arrow-left"></i>
                    </a>
                    <a class="btn btn-warning mb-3 " href="#carouselExampleIndicators2" role="button" data-slide="next">
                        <i class="fa fa-arrow-right"></i>
                    </a>
                </div>
                <div class="col-12">
                    <div id="carouselExampleIndicators2" class="carousel slide" data-ride="carousel">
    
                        <div class="carousel-inner">
                            @php $i = 0; @endphp
                            @foreach ($tours->chunk(3) as $chunk)
                            <div class="carousel-item {{ $i == 0 ? 'active' : '' }}">
                                <div class="row">
                                    @foreach ($chunk as $tour)
                                        <div class="col-md-4 mb-3">
                                            <div class="card border-0 shadow">
                                                <img class="img-fluid card-img-top " alt="100%x280" src="{{asset($tour->package_image)}}" >
                                                <div class="card-body">
                                                    <h4 class="card-title fw-bold fs-5">{{ $tour->tour_title }}</h4>
                                                    <p class="card-text">{{ $tour->tour_address }}</p>
                                                </div>
                                                <div class="card-footer d-flex justify-content-center align-items-center">
                                                    <a href="{{route('package-detail', ['id' => $tour->id])}}" class=""> <button type="button" class="btn btn-primary rounded-3">Book Now</button></a>
                                                </div>
                                            </div>
                                           
                                        </div>
                                   
                                  
                                    @endforeach
                                </div>
                            </div>
                            @php $i++; @endphp
                            @endforeach
                        </div>
                    </div>
                </div> 
       
               
            </div>
        </div>
    </section>
--}}



<section class="home-video-slider">
    <div class="container">
        <div class="home-video-slider-top">
            <h1>Beautiful Places of the world {{Session::get('area')}}</h1>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div id="news-slider" class="owl-carousel">
                    @foreach ($places as $place)
                    <div class="post-slide">
                        <div class="post-img">
                            <video autoplay muted class="img-fluid pb-2 h-100" preload="metadata" src="{{asset($place->place_image)}}" alt="">
                        </div>
                        <h3 class="post-title">
                            <a href="{{route('website.package')}}">{{$place->place_name}}</a>
                        </h3>
                        
                    </div>
                    @endforeach
     
                
                </div>
            </div>
            <div class="home-pakeg-all" style="margin-bottom: 0px;">
                <a href="{{route('website.package')}}"><button type="button" class="btn btn-outline-primary">View All</button></a>
            </div>
        </div>
    </div>
</section>





    <section class="home-pakeg">
        <div class="container">
            <div class="home-pakeg-header">
                <h1>Most populer tour for you</h1>
            </div>
            <div class="row">
                @foreach($tours as $tour)
                <div class="col-md-4">
                    <div class="single-home-pakeg">
                        <img src="{{asset($tour->package_image)}}" alt="" title="" class="img-fluid">
                        <h3>{{ $tour->tour_title }}</h3>
                        <ul>
                            <li><i class="fa-regular fa-clock"></i><span>3 Days</span></li>
                            <li><i class="fa-solid fa-person"></i><span>2 Person</span></li>
                            <li><i class="fa-solid fa-bangladeshi-taka-sign"></i><span>{{$tour->lowest_price}}</span></li>
                        </ul>
                        
                        <a href="{{route('package-detail', ['id' => $tour->id])}}" class=""><button type="button" class="btn btn-primary">Book Now</button></a>
                    </div>
                </div>
                @endforeach
            </div>
            <div class="home-pakeg-all">
                <a href="{{route('website.package')}}"><button type="button" class="btn btn-outline-primary">View All</button></a>
            </div>
        </div>
    </section>


    <div class="demo">
        <h1>Our Client's Thought</h1>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div id="testimonial-slider" class="owl-carousel">
                        @foreach ($reviews as $chunk)
                        <div class="testimonial">
                           
                            <p class="description">
                                {{ $chunk->client_description }}
                            </p>
                            <div class="testimonial-content">
                                <div class="pic">
                                    <img src="{{asset('front/img/client2.jpg')}}" alt="">
                                </div>
                                <div class="content">
                                    <h4 class="name">{{ $chunk->client_name }}</h4>
                                    <span class="post">Web Developer</span>
                                    
                                </div>
                            </div>
                        </div>
                        @endforeach                   
                    </div>
                </div>
            </div>
        </div>
    </div>


    <section class="home-blog">
        <div class="container">
            <div class="home-blog-header">
            <h1>Our Latest Blog About Tour</h1>
            </div>
            <div class="row">
                @foreach($blogs as $blog)
                <div class="col-md-4">
                    <div class="home-single-blog">
                        <img src="{{ url('uplods/blog/'. $blog->blog_image)}}" alt="{{$blog->alt_tag}}" title="{{$blog->title}}" class="img-fluid" style="height: 300px;">
                        <h1>{!!  ($blog->blog_header) !!}</h1>
                        
                        <a href="{{Route('blog-details',$blog->blog_title)}}"><p style="padding-bottom: 20px;">Read more....</p></a>
                    </div>
                </div>
                @endforeach

               
                <div class="home-blog-btn">
                    <a href="{{Route('blog')}}"><button type="button" class="btn btn-primary btn-lg">More Blog</button></a>
                </div>
            </div>
        </div>
    </section>
@endsection
