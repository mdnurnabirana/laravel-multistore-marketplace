@php
    $categoryProductSliderSectionOne = json_decode($categoryProductSliderSectionOne->value);
    $lastKey = [];

    foreach ($categoryProductSliderSectionOne as $key => $category) {
        if ($category === null) {
            break;
        }
        $lastKey = [$key => $category];
    }

    $lastKeyKeys = array_keys($lastKey);

    // Check if lastKey has a valid key before proceeding
    if (!empty($lastKeyKeys)) {
        if ($lastKeyKeys[0] === 'category') {
            $category = \App\Models\Category::find($lastKey['category']);
            if ($category) {
                $products = \App\Models\Product::withAvg('reviews', 'rating')->with(['variants', 'category', 'productImageGalleries'])->withCount('reviews')->where('category_id', $category->id)
                    ->orderBy('id', 'DESC')
                    ->take(12)
                    ->get();
            }
        } elseif ($lastKeyKeys[0] === 'sub_category') {
            $category = \App\Models\SubCategory::find($lastKey['sub_category']);
            if ($category) {
                $products = \App\Models\Product::withAvg('reviews', 'rating')->with(['variants', 'category', 'productImageGalleries'])->withCount('reviews')->where('sub_category_id', $category->id)
                    ->orderBy('id', 'DESC')
                    ->take(12)
                    ->get();
            }
        } else {
            $category = \App\Models\ChildCategory::find($lastKey['child_category']);
            if ($category) {
                $products = \App\Models\Product::withAvg('reviews', 'rating')->with(['variants', 'category', 'productImageGalleries'])->withCount('reviews')->where('child_category_id', $category->id)
                    ->orderBy('id', 'DESC')
                    ->take(12)
                    ->get();
            }
        }
    }
@endphp
<section id="wsus__electronic">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="wsus__section_header">
                    <h3>{{ $category->name }}</h3>
                    <a class="see_btn" href="{{route('products.index', ['category' => $category->slug])}}">see more <i class="fas fa-caret-right"></i></a>
                </div>
            </div>
        </div>
        <div class="row flash_sell_slider">
            @foreach ($products as $product)
                <x-product-card :product="$product"/>
            @endforeach
        </div>
    </div>
</section>