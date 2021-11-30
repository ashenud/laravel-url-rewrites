<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(int $id)
    {
        return view('catalog.product')->with(
            [
                'product' => Product::with('categories')->find($id),
            ]
        );
    }
}
