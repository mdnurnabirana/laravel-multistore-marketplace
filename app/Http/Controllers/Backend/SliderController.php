<?php

namespace App\Http\Controllers\Backend;
use App\Models\Slider;
use App\DataTables\SliderDataTable;
use App\Traits\ImageUploadTrait;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class SliderController extends Controller
{
    use ImageUploadTrait;
    /**
     * Display a listing of the resource.
     */
    public function index(SliderDataTable $dataTable)
    {
        return $dataTable->render('admin.slider.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.slider.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'banner' => ['required','image','max:2000'],
            'type' => ['string','max:200'],
            'title' => ['required','max:200'],
            'starting_price' => ['max:200'],
            'btn_url' => ['url'],
            'serial' => ['required','integer'],
            'status' => ['required']
        ]);

        $slider = new Slider();

        /* Image Upload Dynamic/ Handling Image File */
        $imagePath = $this->uploadImage($request, 'banner', 'uploads');
        $slider-> banner = $imagePath;
        $slider-> type = $request->type;
        $slider-> title = $request->title;
        $slider-> starting_price = $request->starting_price;
        $slider-> btn_url = $request->btn_url;
        $slider-> serial = $request->serial;
        $slider-> status = $request->status;
        $slider-> type = $request->type;
        $slider->save();

        Cache::forget('sliders');
        toastr('Created Succesfully!', 'success');

        return redirect()->back();
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $slider = Slider::findOrFail($id);
        return view('admin.slider.edit', compact('slider'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'banner' => ['nullable','image','max:2000'],
            'type' => ['string','max:200'],
            'title' => ['required','max:200'],
            'starting_price' => ['max:200'],
            'btn_url' => ['url'],
            'serial' => ['required','integer'],
            'status' => ['required']
        ]);

        $slider = Slider::findOrFail($id);

        /* Image Upload Dynamic/ Handling Image File */
        $imagePath = $this->updateImage($request, 'banner', 'uploads', $slider->banner);

        $slider-> banner = empty(!$imagePath) ? $imagePath : $slider->banner;
        $slider-> type = $request->type;
        $slider-> title = $request->title;
        $slider-> starting_price = $request->starting_price;
        $slider-> btn_url = $request->btn_url;
        $slider-> serial = $request->serial;
        $slider-> status = $request->status;
        $slider-> type = $request->type;
        $slider->save();
        Cache::forget('sliders');
        toastr('Updated Succesfully!', 'success');

        return redirect()->route('admin.slider.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $slider = Slider::findOrFail($id);
        $this->deleteImage($slider->banner);
        $slider->delete();

        return response(['status' => 'success', 'message' => 'Deleted Successfully']);
    }
}
