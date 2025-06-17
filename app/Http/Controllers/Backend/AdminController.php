<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Blog;
use App\Models\Brand;
use App\Models\NewsletterSubscriber;
use App\Models\Order;
use App\Models\Product;
use App\Models\ProductReview;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{
    public function dashboard()
    {
        $todaysOrders = Order::whereDate('created_at', Carbon::today())->count();
        $todaysPendingOrders = Order::whereDate('created_at', Carbon::today())->where('order_status', 'pending')->count();
        $totalOrders = Order::count();
        $totalPendingOrders = Order::where('order_status', 'pending')->count();
        $totalCancelledOrders = Order::where('order_status', 'cancelled')->count();
        $totalCompletedOrders = Order::where('order_status', 'delivered')->count();
        $todaysEarnings = Order::whereDate('created_at', Carbon::today())->where('order_status', '!=', 'cancelled')->sum('sub_total');
        $thisMonthsEarnings = Order::whereMonth('created_at', Carbon::now()->month)->where('order_status', '!=', 'cancelled')->sum('sub_total');
        $thisYearsEarnings = Order::whereYear('created_at', Carbon::now()->year)->where('order_status', '!=', 'cancelled')->sum('sub_total');
        $totalReviews = ProductReview::count();
        $avgRatings = ProductReview::avg('rating');
        $totalBrands = Brand::count();
        $totalBlogs = Blog::count();
        $totalProducts = Product::count();
        $totalSubscribers = NewsletterSubscriber::count();
        $totalEarnings = Order::where('order_status', '!=', 'cancelled')->sum('sub_total');
        $totalUsers = User::where('role', '!=', 'user')->count();
        $totalVendors = User::where('role', 'vendor')->count();
        $totalAdmins = User::where('role', 'admin')->count();
        return view('admin.dashboard', compact(
            'todaysOrders', 
            'todaysPendingOrders', 
            'totalOrders', 
            'totalPendingOrders',
            'totalCancelledOrders', 
            'totalCompletedOrders',
            'todaysEarnings',
            'thisMonthsEarnings',
            'thisYearsEarnings',
            'totalReviews',
            'avgRatings',
            'totalBrands',
            'totalBlogs',
            'totalProducts',
            'totalSubscribers',
            'totalEarnings',
            'totalUsers',
            'totalVendors',
            'totalAdmins'
        ));
    }

    public function login()
    {
        return view('admin.auth.login');
    }
}
