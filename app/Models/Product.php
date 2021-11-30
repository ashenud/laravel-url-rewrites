<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use RuthgerIdema\UrlRewrite\Facades\UrlRewrite;
use RuthgerIdema\UrlRewrite\Traits\HasUrlRewrite;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Product extends Model
{
    use HasUrlRewrite;

    /** @var string */
    public $urlRewriteType = 'product';

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

    public function categories(): BelongsToMany
    {
        return $this->belongsToMany(
            Category::class,
            'category_products',
            'product_id',
            'category_id'
        );
    }
}
