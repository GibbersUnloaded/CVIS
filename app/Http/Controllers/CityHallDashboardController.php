<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\ProductRequest;
use App\Models\User;
use App\Models\ReturnProduct;
use App\Models\SoldProduct;
use App\Models\ProductStock;
use Carbon\Carbon;

class CityHallDashboardController extends Controller
{ 
    public function cityhallIndex(){
        //Recent Products
        $recent_products = Product::latest()->limit(5)->get();

        //All
        $total_products = Product::count();
        $total_users = User::where('utype', 'CHV')->count();
        $total_requests = ProductRequest::where('status', ProductRequest::STOCK_IN)->where('utype', 'CHV')->get()->count();
        $total_return_products = ReturnProduct::where('utype', 'CHV')->get()->count();
        $total_sold_products = SoldProduct::where('utype', 'CHV')->get()->count();

        //Today
        $TOD_total_products = Product::whereDate('created_at', Carbon::today())->get()->count();
        $TOD_total_users = User::where('utype', 'CHV')->whereDate('created_at', Carbon::today())->get()->count();
        $TOD_total_requests = ProductRequest::where('status', ProductRequest::STOCK_IN)->where('utype', 'CHV')->whereDate('date', Carbon::today())->get()->count();
        $TOD_total_return_products = ReturnProduct::where('utype', 'CHV')->whereDate('date', Carbon::today())->get()->count();
        $TOD_total_sold_products = SoldProduct::where('utype', 'CHV')->whereDate('date', Carbon::today())->get()->count();

        //Monthly
        $date = Carbon::today()->subDays(30); 
        $MO_total_products = Product::where('created_at','>=',$date)->get()->count();
        $MO_total_users = User::where('utype', 'CHV')->where('created_at','>=',$date)->get()->count();
        $MO_total_requests = ProductRequest::where('utype', 'CHV')->where('date','>=',$date)->get()->count();
        $MO_total_return_products = ReturnProduct::where('utype', 'CHV')->where('date','>=',$date)->get()->count();
        $MO_total_sold_products = SoldProduct::where('utype', 'CHV')->where('date','>=',$date)->get()->count();

        //Weekly
        $date = Carbon::today()->subDays(7); 
        $WK_total_products = Product::where('created_at','>=',$date)->get()->count();
        $WK_total_users = User::where('utype', 'CHV')->where('created_at','>=',$date)->get()->count();
        $WK_total_requests = ProductRequest::where('status', ProductRequest::STOCK_IN)->where('utype', 'CHV')->where('date','>=',$date)->get()->count();
        $WK_total_return_products = ReturnProduct::where('utype', 'CHV')->where('date','>=',$date)->get()->count();
        $WK_total_sold_products = SoldProduct::where('utype', 'CHV')->where('date','>=',$date)->get()->count();
        
        return view('cityhall-dashboard', compact('total_products', 'total_users', 'total_return_products', 'total_sold_products', 'total_requests',
        'TOD_total_products', 'TOD_total_users', 'TOD_total_return_products', 'TOD_total_sold_products', 'TOD_total_requests', 
        'MO_total_products', 'MO_total_users', 'MO_total_return_products', 'MO_total_sold_products', 'MO_total_requests',
        'WK_total_products', 'WK_total_users', 'WK_total_return_products', 'WK_total_sold_products', 'WK_total_requests',
        'recent_products'));
    }
}