<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Advertisement;
use App\Models\Brand;
use App\Models\Category;
use App\Models\ChildCategory;
use App\Models\Product;
use App\Models\ProductReview;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class FrontendProductController extends Controller
{
    public function productsIndex(Request $request)
    {
        if($request->has('category')){
            $category = Category::where('slug', $request->category)->firstOrFail();
            $products = Product::withAvg('reviews', 'rating')->withCount('reviews')->with(['variants', 'category', 'productImageGalleries'])->where([
                'category_id' => $category->id,
                'status' => 1,
                'is_approved' => 1
            ])
            ->when($request->has('range'), function($query) use ($request){
                $price = explode(';', $request->range);
                $from = $price[0];
                $to = $price[1];
                $query->whereBetween('price', [$from, $to]);
            })
            ->paginate(12);
        } elseif($request->has('subcategory')){
            $category = SubCategory::where('slug', $request->subcategory)->firstOrFail();
            $products = Product::withAvg('reviews', 'rating')->withCount('reviews')->with(['variants', 'category', 'productImageGalleries'])->where([
                'sub_category_id' => $category->id,
                'status' => 1,
                'is_approved' => 1
            ])
            ->when($request->has('range'), function($query) use ($request){
                $price = explode(';', $request->range);
                $from = $price[0];
                $to = $price[1];
                $query->whereBetween('price', [$from, $to]);
            })
            ->paginate(12);
        } elseif($request->has('childcategory')){
            $category = ChildCategory::where('slug', $request->childcategory)->firstOrFail();
            $products = Product::withAvg('reviews', 'rating')->withCount('reviews')->with(['variants', 'category', 'productImageGalleries'])->where([
                'child_category_id' => $category->id,
                'status' => 1,
                'is_approved' => 1
            ])
            ->when($request->has('range'), function($query) use ($request){
                $price = explode(';', $request->range);
                $from = $price[0];
                $to = $price[1];
                $query->whereBetween('price', [$from, $to]);
            })
            ->paginate(12);
        } elseif($request->has('brand')){
            $brand = Brand::where('slug', $request->brand)->firstOrFail();
            $products = Product::withAvg('reviews', 'rating')->withCount('reviews')->with(['variants', 'category', 'productImageGalleries'])->where([
                'brand_id' => $brand->id,
                'status' => 1,
                'is_approved' => 1
            ])
            ->when($request->has('range'), function($query) use ($request){
                $price = explode(';', $request->range);
                $from = $price[0];
                $to = $price[1];
                $query->whereBetween('price', [$from, $to]);
            })
            ->paginate(12);
        } elseif($request->has('search')){
            $products = Product::withAvg('reviews', 'rating')->withCount('reviews')->with(['variants', 'category', 'productImageGalleries'])
            ->where(['status' => 1, 'is_approved' => 1])->where(function($query) use ($request){
                $query->where('name', 'like', '%'.$request->search.'%')
                ->orWhere('long_description', 'like', '%'.$request->search.'%')
                ->orWhereHas('category', function($query) use ($request){
                    $query->where('name', 'like', '%'.$request->search.'%')
                    ->orWhere('long_description', 'like', '%'.$request->search.'%');
                });
            })->paginate(12);
        } else {
            $products = Product::withAvg('reviews', 'rating')->withCount('reviews')->with(['variants', 'category', 'productImageGalleries'])
            ->where(['status' => 1, 'is_approved' => 1])->orderBy('id', 'DESC')->paginate(12);
        }
        $categories = Category::where('status', 1)->get();
        $brands = Brand::where('status', 1)->get();
        $product_page_banner = Advertisement::where('key', 'product_page_banner')->first();
        $product_page_banner = json_decode($product_page_banner?->value);
        return view('frontend.pages.product', compact('products', 'categories', 'brands', 'product_page_banner'));
    }

    public function showProduct(string $slug)
    {
        $product = Product::with(['vendor', 'category', 'productImageGalleries', 'variants', 'brand'])->where('slug', $slug)->where('status', 1)->first();
        $reviews = ProductReview::where('product_id', $product->id)->where('status', 1)->paginate(10);
        return view('frontend.pages.product-detail', compact('product', 'reviews'));
    }

    public function changeListView(Request $request)
    {
        Session::put('product_list_style', $request->style);
    }
}
