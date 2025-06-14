<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Blog;
use App\Models\BlogComment;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    public function blogDetails(string $slug)
    {
        $blog = Blog::with('comments')->where('slug', $slug)->where('status', 1)->firstOrFail();
        $moreBlogs = Blog::where('slug', '!=', $slug)->where('status', 1)->orderBy('id', 'desc')->take(12)->get();
        $comments = $blog->comments()->paginate(20);
        return view('frontend.pages.blog-details', compact('blog', 'moreBlogs', 'comments'));
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
