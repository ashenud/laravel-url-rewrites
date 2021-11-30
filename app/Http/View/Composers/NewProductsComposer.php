<?php

declare(strict_types=1);

namespace App\Http\View\Composers;

use App\Models\Product;
use Illuminate\View\View;
use Illuminate\Database\Eloquent\Collection;

class NewProductsComposer
{
    /** @var Product */
    protected $product;

    public function __construct(Product $product)
    {
        $this->product = $product;
    }

    public function compose(View $view)
    {
        $view->with('new', $this->getNewProducts());
    }

    protected function getNewProducts(): Collection
    {
        return $this->product->orderBy('created_at', 'desc')->get()->take(6);
    }
}
