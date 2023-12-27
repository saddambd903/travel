<?php

namespace App\Http\Controllers;
use App\Models\Faq;
use App\Models\Blog;
use App\Models\Package;
use Illuminate\Http\Request;


class FaqController extends Controller
{
    public function index(){
        return view('admin.faqs.index',[
            'faqs' => Faq::latest()->get()
        ]);
    }
    public function create(){
        return view('admin.faqs.create', [
            'packages' => Package::where('status', 1)->get(),
        ]);
    }

    public function saveFaq(Request $request){
        Faq::saveFaqs($request);
        return back()->with('message','Info save successfully');
    }
    public function statusFaq($id){
        Faq::statusFaq($id);
        return back()->with('message','status Info update successfully');
    }

    public function faqDelete(Request $request){
        Faq::faqsDelete($request);
        return back()->with('message','Info Delete successfully');
    }
    public function edit($id)
    {
        return view('admin.faqs.edit', [
            'faq'   => Faq::find($id),
            'packages' => Package::where('status', 1)->get(),
        ]);
    }
    public function faqUpdate(Request $request, $id)
    {
        Faq::faqsUpdate($request, $id);
        return back()->with('message', 'Faqs info updated.');
    }

    public function blogAdd()
    {
        return view('admin.faqs.blog');
    }
    public function uploadImage(Request $request) {    
        if($request->hasFile('upload')) {
            $originName = $request->file('upload')->getClientOriginalName();
            $fileName = pathinfo($originName, PATHINFO_FILENAME);
            $extension = $request->file('upload')->getClientOriginalExtension();
            $fileName = $fileName.'_'.time().'.'.$extension;
        
            $request->file('upload')->move(public_path('images'), $fileName);
    
            $CKEditorFuncNum = $request->input('CKEditorFuncNum');
            $url = asset('images/'.$fileName); 
            $msg = 'Image uploaded successfully'; 
            $response = "<script>window.parent.CKEDITOR.tools.callFunction($CKEditorFuncNum, '$url', '$msg')</script>";
                
            @header('Content-type: text/html; charset=utf-8'); 
            echo $response;
        }
     } 
     public function store(Request $request)
   {
    $request->validate([
        'alt_tag'=>'required',
        'title'=>'required',
        'blog_title'=>'required|unique:blogs',
        'blog_image'=>'required|mimes:jpeg,png,jpg,webp|max:6114',
        'longText'=> 'required',
        'blog_header'=> 'required',
    ]);

    $originalText=$request->blog_title;
    $newText = str_replace(' ', '-', $originalText);

    if (Blog::where('blog_title',$newText)->exists())
    {
        $this->setErrorMessage('Blog-title Should be UNIQUE....');
        return redirect()->back();
    }else{
        try {
            if($request->hasfile('blog_image'))
            {
                $input= new Blog;
                $input->alt_tag=$request->alt_tag;
                $input->title=$request->title;
                $input->blog_title=$newText;
                $input->longText=$request->longText;
                $input->blog_header=$request->blog_header;
    

                $file=$request->file('blog_image');
                $extenstion = $file->getClientOriginalExtension();
                $filename=time().'.'.$extenstion;
                $file->move('uplods/blog/',$filename);
                $input->blog_image=$filename;
            }
            $input->save();
            $this->setSuccessMessage('New Blog Added!!!');
            return redirect()->back();
        } catch (Exception $errors) {
            return redirect()->back();
        }
    } 
   }

   public function editBlog($id)
   {
    $blog = Blog::find($id);
    return view('admin.faqs.update-blog',compact('blog'));
   }

   public function updateBlog(Request $request, $id)
   {
    $request->validate([
        'alt_tag'=>'required',
        'title'=>'required',
        'blog_title'=>'required|unique:blogs,blog_title,'.$id,
        // 'blog_image'=>'required|mimes:jpeg,png,jpg,webp|max:6114',
        'longText'=> 'required',
        'blog_header'=> 'required',
    ]);
    //'number'=>'required|unique:workers,number,'.$id,
    try {
        $updateinfo=Blog::find($id);
        $updateinfo->alt_tag=$request->input('alt_tag');
        $updateinfo->title=$request->input('title');
        $updateinfo->blog_title=$request->input('blog_title');
        $updateinfo->longText=$request->input('longText');
        $updateinfo->blog_header=$request->input('blog_header');
        if($request->hasfile('blog_image'))
    {
        $destination= 'uplods/blog/'.$updateinfo->blog_image;
        if(File::exists($destination))
        {
            File::delete($destination);
        }
        $file=$request->file('blog_image');
        $extenstion = $file->getClientOriginalExtension();
        $filename=time().'.'.$extenstion;
        $file->move('uplods/blog/',$filename);
        $updateinfo->blog_image=$filename;
    }
    $updateinfo->update();
    $this->setSuccessMessage('Blog update Successfelly Done!!');
    return redirect()->back();
    } catch (Exception $e) {
        return redirect()->back();
        
    }
   }

   public function deleteBlog($id)
    {
        $flight = Blog::findOrFail($id);
        $flight->delete();
        $this->setSuccessMessage('Request Deleted!! ');
        return redirect()->back();
        
    }
    public function allBlog()
    {
    $blogs= Blog::all();
    return view('admin.faqs.all-blog',compact('blogs'));
    }

}
