<?php

namespace App\DataTables;

use App\Models\WithdrawRequest;
use Illuminate\Database\Eloquent\Builder as QueryBuilder;
use Yajra\DataTables\EloquentDataTable;
use Yajra\DataTables\Html\Builder as HtmlBuilder;
use Yajra\DataTables\Html\Button;
use Yajra\DataTables\Html\Column;
use Yajra\DataTables\Html\Editor\Editor;
use Yajra\DataTables\Html\Editor\Fields;
use Yajra\DataTables\Services\DataTable;

class WithdrawRequestDataTable extends DataTable
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
                $showBtn = "<a href='".route('admin.withdraw.show', $query->id)."' class='btn btn-primary'><i class='far fa-eye'></i></a>";
                return $showBtn;
            })
            ->addColumn('vendor', function ($query) {
                return $query->vendor->shop_name;
            })
            ->addColumn('date', function ($query) {
                return $query->created_at->format('d M Y');
            })
            ->addColumn('status', function ($query) {
                if ($query->status == 'pending') {
                    return "<span class='badge bg-warning'>Pending</span>";
                } elseif ($query->status == 'paid') {
                    return "<span class='badge bg-success'>Paid</span>";
                } else {
                    return "<span class='badge bg-danger'>Declined</span>";
                }
            })
            ->addColumn('total_amount', function ($query) {
                return getCurrencyIcon() . $query->total_amount;
            })
            ->addColumn('withdraw_amount', function ($query) {
                return getCurrencyIcon() . $query->withdraw_amount;
            })
            ->addColumn('withdraw_charge', function ($query) {
                return getCurrencyIcon() . $query->withdraw_charge;
            })
            ->rawColumns(['status', 'action'])
            ->setRowId('id');
    }

    /**
     * Get the query source of dataTable.
     */
    public function query(WithdrawRequest $model): QueryBuilder
    {
        return $model->newQuery();
    }

    /**
     * Optional method if you want to use the html builder.
     */
    public function html(): HtmlBuilder
    {
        return $this->builder()
                    ->setTableId('withdrawrequest-table')
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
            Column::make('id')->addClass('text-center'),
            Column::make('vendor')->addClass('text-center'),
            Column::make('method')->addClass('text-center'),
            Column::make('total_amount')->addClass('text-center'),
            Column::make('withdraw_amount')->addClass('text-center'),
            Column::make('withdraw_charge')->addClass('text-center'),
            Column::make('status')->addClass('text-center'),
            Column::make('date')->addClass('text-center'),
            Column::computed('action')
                  ->exportable(false)
                  ->printable(false)
                  ->width(100)
                  ->addClass('text-center'),
        ];
    }

    /**
     * Get the filename for export.
     */
    protected function filename(): string
    {
        return 'WithdrawRequest_' . date('YmdHis');
    }
}
