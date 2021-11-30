<div class="col-lg-4 col-md-6 mb-4">
    <div class="card h-100">
        <a href="{{ $product->url }}">
            <img class="card-img-top" src="{{ $product->image }}" alt="{{ $product->name }}">
        </a>
        <div class="card-body">
            <h4 class="card-title">
                <a href="{{ $product->url }}">{{ $product->name }}</a>
            </h4>
            <h5>$ {{ $product->price }}</h5>
            <p class="card-text">
                {{ $product->description }}
            </p>
        </div>
    </div>
</div>
