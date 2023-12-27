<?php

namespace App\Http\Controllers;

use App\Mail\BookingConfirmationMail;
use App\Models\Package;
use App\Models\PackageCategory;
use App\Models\Place;
use App\Models\Faq;
use App\Models\Blog;
use App\Models\PackagePrice;
use App\Models\ClientReview;
use Illuminate\Http\Request;
use Mail;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Session;
class HomeController extends Controller
{
    public function index()
    {

        return view('website.home.index', [
            'places' => Place::where('status', 1)->get(), 
            'tour_pakeg'  => Package::where('status', 1)->orderBy('id', 'desc')->get(),
            'tours'  => Package::where('status', 1)->orderBy('id', 'desc')->limit(3)->get(),
            'reviews'=> ClientReview::where('status', 1)->orderBy('created_at', 'desc')->get(),
            'blogs'=>Blog::limit(3)->orderBy('created_at', 'desc')->get(),
        ]);
    }

    public function packageSearch(Request $request)
    {
        
        $request->Session()->put('plase',  $request->input('title'));
        $request->Session()->put('check_in',  $request->input('check_in'));
        $request->Session()->put('check_out',  $request->input('check_out'));
        $request->Session()->put('adult',  $request->input('adult'));
        $request->Session()->put('adults',  $request->input('adults'));
        $request->Session()->put('child',  $request->input('child'));
        $request->Session()->put('childS',  $request->input('childS'));

        $query = Package::where('status', 1);

        // Title and Duration Search
        if ($request->has('title') && $request->has('duration')) {
            $query->where('tour_title', 'like', '%' . $request->input('title') . '%')
                ->where(function ($query) use ($request) {
                    $duration = $request->input('duration');
                    $query->whereRaw("DATEDIFF(tour_end_date, tour_start_date) <= $duration");
                });
        } 
        // Title Search
        elseif ($request->has('title')) {
            $query->where('tour_title', 'like', '%' . $request->input('title') . '%');
        }
        // Duration Search
        elseif ($request->has('duration')) {
            $query->where(function ($query) use ($request) {
                $duration = $request->input('duration');
                $query->whereRaw("DATEDIFF(tour_end_date, tour_start_date) <= $duration");
            });
        }
         // Rating Search
        if ($request->has('ratings') && is_array($request->input('ratings'))) {
            $ratings = $request->input('ratings');
            $query->whereIn('tour_rating', $ratings);
        }
        // Tour Type Search
        if ($request->has('tour_types') && is_array($request->input('tour_types'))) {
            $tourTypes = $request->input('tour_types');
            $query->whereIn('package_category_id', $tourTypes);
        }
        // Continue with other search criteria...

        // Filter based on the lowest price
        if ($request->has('lowestPrice')) {
            $price = $request->input('lowestPrice');
            $query->where('lowest_price', '<=', $price);
        }

        $lowestPrices = PackagePrice::select('package_id', DB::raw('MIN(price) as min_price'))
        ->groupBy('package_id')
        ->get();
        $tourtypes = PackageCategory::where('status', 1)->get();
        $tours = $query->orderBy('created_at', 'desc') // Assuming 'created_at' is in the 'packages' table
            ->latest()
            ->paginate(5)
            ->appends(request()->all());

        return view('website.home.packages', [
            'tours' => $tours,
            'tourTypes' => $tourtypes,
            'lowestPrices' => $lowestPrices
        ]);
    }

    public function packageDetail($id)
    {
        $lowestPrices = PackagePrice::select('package_id', DB::raw('MIN(price) as min_price'))
        ->groupBy('package_id')
        ->get();
        return view('website.package.index', ['package' => Package::find($id), 'lowestPrices' => $lowestPrices, 'packages' => Package::where('status', 1)->orderBy('id', 'desc')->get(), 'faqs' => Faq::where('tour_id', $id)->get()]);
    }

    public function contact()
    {
        return view('website.contact.index');
    }

    public function places(){

        $places = Place::where('status', 1)->orderBy('created_at', 'desc')
        ->latest()
        ->paginate(9)
        ->appends(request()->all());

        return view('website.home.places', ['places'=>$places]);
    }
    public function packages()
    {
        $lowestPrices = PackagePrice::select('package_id', DB::raw('MIN(price) as min_price'))
        ->groupBy('package_id')
        ->get();
        $tourtypes = PackageCategory::where('status', 1)->get();
        return view('website.home.packages', [
            
            'tours' => Package::where('status', 1)->orderBy('id', 'desc')
            ->latest()
            ->paginate(5)
            ->appends(request()->all()),
            'lowestPrices' => $lowestPrices, 
            'tourTypes' => $tourtypes]);
    }



    public function blog()
    {
        $data['blogs']=Blog::get();
        return view('website.home.blog', $data);
    }
    public function blogDetails($id)
    { 
        $data['blogs']=Blog::get();
        $data['blogs_deatils']=Blog::where('blog_title',$id)->first();
        return view('website.home.blog-details',$data);
    }
}
