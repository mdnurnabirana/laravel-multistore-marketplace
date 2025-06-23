<?php

namespace App\Http\Controllers\Backend;

use App\DataTables\WithdrawRequestDataTable;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use function Termwind\render;

class WithdrawController extends Controller
{
    function index(WithdrawRequestDataTable $dataTable){
        return $dataTable->render('admin.withdraw.index');
    }
}
