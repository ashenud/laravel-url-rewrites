<?php

namespace App\Providers;

use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;
use App\Http\View\Composers\HeaderComposer;
use App\Http\View\Composers\NewProductsComposer;

class ViewServiceProvider extends ServiceProvider
{
    public function boot()
    {
        View::composer(
            'cms.homepage.index', NewProductsComposer::class
        );

        View::composer(
            'common.header', HeaderComposer::class
        );
    }
}
