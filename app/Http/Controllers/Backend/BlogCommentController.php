<?php

namespace App\Http\Controllers\Backend;

use App\DataTables\BlogCommentDataTable;
use App\Http\Controllers\Controller;
use App\Models\Blog;
use App\Models\BlogComment;
use Illuminate\Http\Request;

class BlogCommentController extends Controller
{
    public function index(BlogCommentDataTable $dataTable)
    {
        return $dataTable->render('admin.blog.blog-comment.index');
    }

    public function destroy(string $id)
    {
        $comment = BlogComment::findOrFail($id);
        $comment->delete();

        return response([
            'message' => 'Comment deleted successfully.',
            'status' => 'success',
        ]);
    }
}
