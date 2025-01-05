<?php

namespace App\DataTables;

use App\Models\Product;
use Illuminate\Database\Eloquent\Builder as QueryBuilder;
use Illuminate\Support\Facades\Auth;
use Yajra\DataTables\EloquentDataTable;
use Yajra\DataTables\Html\Builder as HtmlBuilder;
use Yajra\DataTables\Html\Button;
use Yajra\DataTables\Html\Column;
use Yajra\DataTables\Html\Editor\Editor;
use Yajra\DataTables\Html\Editor\Fields;
use Yajra\DataTables\Services\DataTable;

class VendorProductDataTable extends DataTable
{
    /**
     * Build the DataTable class.
     *
     * @param QueryBuilder $query Results from query() method.
     */
    public function dataTable(QueryBuilder $query): EloquentDataTable{
        return (new EloquentDataTable($query))
        ->addColumn('action', function($query) {
            // Edit Button
            $editBtn = "<a href='".route('vendor.products.edit', $query->id)."' class='btn btn-primary'><i class='far fa-edit'></i></a>";
            
            // Delete Button
            $dltBtn = "<a href='".route('vendor.products.destroy', $query->id)."' class='btn btn-danger ml-2 delete-item'><i class='far fa-trash-alt'></i></a>";
            
            // More Options Dropdown
            $moreBtn = '<div class="dropdown dropstart d-inline">
                          <button class="btn btn-primary dropdown-toggle ml-2" type="button" id="dropdownMenuButton2" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fas fa-cog"></i>
                          </button>
                          <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton2">
                            <li><a class="dropdown-item" href="'.route('vendor.products-image-gallery.index', ['product' => $query->id]).'"><i class="far fa-images me-1"></i> Image Gallery</a></li>
                            <li><a class="dropdown-item" href="'.route('vendor.products-variant.index', ['product' => $query->id]).'"><i class="fas fa-list-alt me-1"></i> Variants</a></li>
                          </ul>
                        </div>';
        
            // Return the combined action buttons
            return $editBtn . $dltBtn . $moreBtn;
        })
        
            ->addColumn('image', function($query) {
                return "<img width='70px' src='" . asset($query->thumb_image) . "'>";
            })
            ->addColumn('type', function($query) {
                switch ($query->product_type) {
                    case 'new_arrival':
                        return '<i class="badge bg-success">New Arrival</i>';
                    case 'featured_product':
                        return '<i class="badge bg-warning">Featured Product</i>';
                    case 'top_product':
                        return '<i class="badge bg-info">Top Product</i>';
                    case 'best_product':
                        return '<i class="badge bg-danger">Best Selling Product</i>';
                    default:
                        return '<i class="badge bg-dark">None</i>';
                }
            })
            ->addColumn('status', function($query) {
                if($query->status == 1)
                {
                    $button = '<div class="form-check form-switch">
                        <input checked class="form-check-input change-status" type="checkbox" id="flexSwitchCheckDefault" data-id="'.$query->id.'">
                    </div>';
                }
                else{
                    $button = '<div class="form-check form-switch">
                        <input class="form-check-input change-status" type="checkbox" id="flexSwitchCheckDefault" data-id="'.$query->id.'">
                    </div>';
                }

                return $button;
            })
            ->addColumn('approved', function($query) {
                if($query->is_approved == 1)
                {
                    return '<i class="badge bg-success">Approved</i>';
                }
                else{
                    return '<i class="badge bg-danger">Pending</i>';
                }
            })
            ->rawColumns(['image', 'type', 'status', 'action', 'approved'])
            ->setRowId('id');
    }

    /**
     * Get the query source of dataTable.
     */
    public function query(Product $model): QueryBuilder
    {
        return $model->where('vendor_id', Auth::user()->vendor->id)->newQuery();
    }

    /**
     * Optional method if you want to use the html builder.
     */
    public function html(): HtmlBuilder
    {
        return $this->builder()
                    ->setTableId('vendorproduct-table')
                    ->columns($this->getColumns())
                    ->minifiedAjax()
                    //->dom('Bfrtip')
                    ->orderBy(0)
                    ->selectStyleSingle()
                    ->buttons([
                        Button::make('excel'),
                        Button::make('csv'),
                        Button::make('pdf'),
                        Button::make('print'),
                        Button::make('reset'),
                        Button::make('reload')
                    ]);
    }

    /**
     * Get the dataTable columns definition.
     */
    public function getColumns(): array
    {
        return [
            Column::make('id'),
            Column::make('image')->width(150)->addClass('text-center'),
            Column::make('name')->width(150)->addClass('text-center'),
            Column::make('price')->addClass('text-center'),
            Column::make('approved')->addClass('text-center'),
            Column::make('type')->width(100)->addClass('text-center'),
            Column::make('status')->addClass('text-center'),
            Column::computed('action')
                  ->exportable(false)
                  ->printable(false)
                  ->width(180)
                  ->addClass('text-center'),
        ];
    }

    /**
     * Get the filename for export.
     */
    protected function filename(): string
    {
        return 'VendorProduct_' . date('YmdHis');
    }
}
