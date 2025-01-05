<?php

namespace App\Http\Controllers\Backend;

use App\DataTables\ProductVarientItemDataTable;
use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\ProductVariant;
use App\Models\ProductVarientItem;
use Illuminate\Http\Request;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx\Rels;

class ProductVariantItemController extends Controller
{
    public function index(ProductVarientItemDataTable $dataTable, $productId, $variantId)
    {
        $product = Product::findOrFail($productId);
        $variant = ProductVariant::findOrFail($variantId);
        return $dataTable->render('admin.product.product-variant-item.index', compact('product', 'variant'));
    }

    public function create(string $productId, string $variantId)
    {
        $variant = ProductVariant::findOrFail($variantId);
        $product = Product::findOrFail($productId);

        return view('admin.product.product-variant-item.create', compact('variant', 'product'));
    }

    public function store(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'variant_id' => ['integer', 'required'],
            'name' => ['required', 'max:200'],
            'price' => ['integer', 'required'],
            'is_default' => ['required'],
            'status' => ['required']
        ]);

        $variantItem = new ProductVarientItem();
        $variantItem->product_variant_id = $request->variant_id;
        $variantItem->name = $request->name;
        $variantItem->price = $request->price;
        $variantItem->is_default = $request->is_default;
        $variantItem->status = $request->status;

        $variantItem->save();

        toastr('Created Successfully!', 'success');

        return redirect()->route('admin.products-variant-item.index', ['productId' => $request->product_id , 'variantId' => $request->variant_id]);
    }

    public function edit(string $variantItemId)
    {
        $variantItem = ProductVarientItem::findOrFail($variantItemId);
        return view('admin.product.product-variant-item.edit', compact('variantItem'));
    }

    public function update(Request $request, string $variantItemId)
    {
        // dd($request->all());
        $request->validate([
            'name' => ['required', 'max:200'],
            'price' => ['integer', 'required'],
            'is_default' => ['required'],
            'status' => ['required']
        ]);

        $variantItem = ProductVarientItem::findOrFail($variantItemId);

        $variantItem->name = $request->name;
        $variantItem->price = $request->price;
        $variantItem->is_default = $request->is_default;
        $variantItem->status = $request->status;

        $variantItem->save();

        toastr('Updated Successfully!', 'success');

        return redirect()->route('admin.products-variant-item.index', ['productId' => $variantItem->productVariant->product_id , 'variantId' => $variantItem->product_variant_id]);
    }

    public function destroy(string $variantItemId)
    {
        $variantItem = ProductVarientItem::findOrFail($variantItemId);
        $variantItem->delete();

        return response(['status' => 'success', 'message' => 'Deleted Successfully!']);
    }

    public function changeStatus(Request $request)
    {
        $variantItem = ProductVarientItem::findOrFail($request->id);
        
        $variantItem->status = $request->status == 'true' ? 1 : 0;
        $variantItem->save();

        return response(['message' => 'Status has been updated!']);
    }

}
