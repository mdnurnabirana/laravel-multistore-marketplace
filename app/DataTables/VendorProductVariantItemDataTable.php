<?php

namespace App\DataTables;

use App\Models\ProductVarientItem;
use App\Models\VendorProductVariantItem;
use Illuminate\Database\Eloquent\Builder as QueryBuilder;
use Yajra\DataTables\EloquentDataTable;
use Yajra\DataTables\Html\Builder as HtmlBuilder;
use Yajra\DataTables\Html\Button;
use Yajra\DataTables\Html\Column;
use Yajra\DataTables\Html\Editor\Editor;
use Yajra\DataTables\Html\Editor\Fields;
use Yajra\DataTables\Services\DataTable;

class VendorProductVariantItemDataTable extends DataTable
{
    /**
     * Build the DataTable class.
     *
     * @param QueryBuilder $query Results from query() method.
     */
    public function dataTable(QueryBuilder $query): EloquentDataTable
    {
        return (new EloquentDataTable($query))
        ->addColumn('action', function($query) {
            // Edit Button
            $editBtn = "<a href='".route('vendor.products-variant-item.edit', $query->id)."' class='btn btn-primary'><i class='far fa-edit'></i></a>";
            
            // Delete Button
            $dltBtn = "<a href='".route('vendor.products-variant-item.destroy', $query->id)."' class='btn btn-danger ml-2 delete-item'><i class='far fa-trash-alt'></i></a>";
            
            // Return the combined action buttons
            return $editBtn . $dltBtn;
            })
            ->addColumn('status', function($query) {
                if($query->status == 1)
                {
                    $button = '<div class="form-check form-switch mt-2">
                        <input checked class="form-check-input change-status" type="checkbox" id="flexSwitchCheckDefault" data-id="'.e($query->id).'">
                        </div>';
                }
                else{
                    $button = '<div class="form-check form-switch mt-2">
                        <input class="form-check-input change-status" type="checkbox" id="flexSwitchCheckDefault" data-id="'.e($query->id).'">
                        </div>';
                }

                return $button;
            })
            ->addColumn('is_default', function($query){
                if($query->is_default == 1){
                    return '<span class="badge bg-success">Default</span>';
                } else {
                    return '<span class="badge bg-danger">Not Default</span>';
                }
            })
            ->addColumn('variant_name', function($query){
                return $query->productVariant->name;
            })
            ->rawColumns(['status', 'action', 'is_default'])
            ->setRowId('id');
    }

    /**
     * Get the query source of dataTable.
     */
    public function query(ProductVarientItem $model): QueryBuilder
    {
        return $model->where('product_variant_id', request()->variantId)->newQuery();
    }

    /**
     * Optional method if you want to use the html builder.
     */
    public function html(): HtmlBuilder
    {
        return $this->builder()
                    ->setTableId('vendorproductvariantitem-table')
                    ->columns($this->getColumns())
                    ->minifiedAjax()
                    //->dom('Bfrtip')
                    ->orderBy(1)
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
            Column::make('id')->addClass('text-center'),
            Column::make('name')->width(200)->addClass('text-center'),
            Column::make('variant_name')->width(300)->addClass('text-center'),
            Column::make('price')->width(200)->addClass('text-center'),
            Column::make('is_default')->width(200)->addClass('text-center'),
            Column::make('status')->width(200)->addClass('text-center'),
            Column::computed('action')
                  ->exportable(false)
                  ->printable(false)
                  ->width(200)
                  ->addClass('text-center'),
        ];
    }

    /**
     * Get the filename for export.
     */
    protected function filename(): string
    {
        return 'VendorProductVariantItem_' . date('YmdHis');
    }
}
