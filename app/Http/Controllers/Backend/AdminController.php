<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Order;
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
        return view('admin.dashboard', compact(
            'todaysOrders', 
            'todaysPendingOrders', 
            'totalOrders', 
            'totalPendingOrders',
            'totalCancelledOrders', 
            'totalCompletedOrders',
            'todaysEarnings',
            'thisMonthsEarnings'
        ));
    }

    public function login()
    {
        return view('admin.auth.login');
    }
}
