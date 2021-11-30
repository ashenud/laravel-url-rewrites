<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use RuthgerIdema\UrlRewrite\Facades\UrlRewrite;
use RuthgerIdema\UrlRewrite\Traits\HasUrlRewrite;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Category extends Model
{
    use HasUrlRewrite;

    /** @var string */
    public $urlRewriteType = 'category';

    /** @var array */
    protected $appends = ['url'];

    public function getOriginalUrlAttribute(): string
    {
        $urlRewrite = UrlRewrite::getByRequestPath(request()->path());

        if (! $urlRewrite) {
            $urlRewrite = UrlRewrite::getByTargetPath('/'.request()->path());
        }

        return $urlRewrite->target_path;
    }

    public function products(): BelongsToMany
    {
        return $this->belongsToMany(
            Product::class,
            'category_products',
            'category_id',
            'product_id'
        );
    }
}
