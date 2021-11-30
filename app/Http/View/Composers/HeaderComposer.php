<?php

declare(strict_types=1);

namespace App\Http\View\Composers;

use App\Models\Category;
use Illuminate\View\View;

class HeaderComposer
{
    /** @var Category */
    protected $category;

    public function __construct(Category $category)
    {
        $this->category = $category;
    }

    public function compose(View $view)
    {
        $view->with('categories', $this->category::all());
    }
}
