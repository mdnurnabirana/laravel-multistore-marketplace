<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Blog;
use App\Models\BlogCategory;
use App\Models\BlogComment;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    public function blog(Request $request)
    {
        if($request->has('search'))
        {
            $search = $request->input('search');
            $blogs = Blog::with('category')->where('status', 1)
                ->where(function($query) use ($search) {
                    $query->where('title', 'like', "%{$search}%")
                          ->orWhere('description', 'like', "%{$search}%");
                })
                ->orderBy('id', 'desc')
                ->paginate(12);
        } elseif($request->has('category')) {
            $category =  BlogCategory::where('slug', $request->category)->where('status', 1)->firstOrFail();
            $blogs = Blog::with('category')->where('status', 1)
                ->where('category_id', $category->id)
                ->orderBy('id', 'desc')
                ->paginate(12);
        } else {
            $blogs = Blog::with('category')->where('status', 1)->orderBy('id', 'desc')->paginate(12);
        }
        
        return view('frontend.pages.blog', compact('blogs'));
    }

    public function blogDetails(string $slug)
    {
        $blog = Blog::with('comments')->where('slug', $slug)->where('status', 1)->firstOrFail();
        $moreBlogs = Blog::where('slug', '!=', $slug)->where('status', 1)->orderBy('id', 'desc')->take(5)->get();
        $recentBlogs = Blog::where('slug', '!=', $slug)->where('status', 1)
            ->where('category_id', $blog->category_id)->orderBy('id', 'desc')->take(12)->get();
        $comments = $blog->comments()->paginate(20);
        $categories = BlogCategory::where('status', 1)->orderBy('id', 'desc')->get();
        return view('frontend.pages.blog-details', compact('blog', 'moreBlogs', 'recentBlogs', 'comments', 'categories'));
    }

    public function addComment(Request $request)
    {
        $request->validate([
            'comment' => 'required|string|max:1000',
        ]);

        $comment = new BlogComment();
        $comment->user_id = $request->user_id;
        $comment->blog_id = $request->blog_id;
        $comment->comment = $request->comment;
        $comment->save();

        toastr('Comment added successfully!', 'success');
        return redirect()->back();
    }
}
