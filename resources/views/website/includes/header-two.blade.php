
<!--    header section start here-->

<header class="py-2">
    <nav>
        <div class="container px-0">
            <div class="row hidden justify-content-center">
                <div class="col-12 navbar nav navbar-expand-lg mt-4">
                    <a href="{{route('home')}}" class="m-0 p-0 nav-link navbar-brand"><img class="img-fluid mx-0 h-auto" src="{{asset('/')}}assets/front/img/logo.png" alt=""></a>
                    <!-- <button class="navbar-toggler btn-primary border-0" data-bs-target="#menu" data-bs-toggle="collapse">
                        <span class="navbar-toggler-icon"></span>
                    </button> -->
                    <div class="collapse navbar-collapse menu fw-bolder" id="menu">
                        <ul class="ms-auto  navbar-nav navbar-brand text-uppercase">
                            <li class="nav-item"><a href="{{ route('website.package') }}" class="nav-link fs-5 px-2 text-white menuhover"><small style="color: black">Tour Packages</small></a></li>
                            <li class="nav-item"><a href="{{ route('blog') }}" class="nav-link fs-5 px-2 text-white menuhover"><small style="color: black">Blog</small></a></li>
                            <li class="nav-item"><a href="{{route('contact')}}" class="nav-link fs-5 px-2 fontfamily text-white menuhover"><small style="color: black">Contact</small></a></li>
                            @if(Session::get('customer_id'))
                                <li class="nav-item dropdown">
                                    <a href="" class="nav-link fs-5 px-2 text-black menuhover dropdown-toggle" data-bs-toggle="dropdown" >{{Session::get('customer_name')}}</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="{{route('customer.dashboard')}}" class="dropdown-item">My Order</a></li>
                                        <li><a href="{{route('customer.logout')}}" class="dropdown-item">Logout</a></li>
                                    </ul>
                                </li>
                            @else
                                    {{-- <li class="nav-item"><a href="{{route('customer.login')}}" class="nav-link fs-5 px-2 fontfamily text-white menuhover">Login</a></li> --}}
                            @endif
                            <li class="nav-item"><a href="{{route('website.package')}}" class="btn btn-outline-primary text-white border-3 fw-bolder ms-3 px-4 me-5"><small>BOOK NOW</small></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </nav>
</header>

<!--    header section End here-->
