require('./bootstrap');


var client = algoliasearch("ASQ0DBZNVJ", process.env.MIX_ALGOLIA_SEARCH)
var products = client.initIndex('products_index_' + process.env.MIX_ALGOLIA_APPEND);
var categories = client.initIndex('categories_index_' + process.env.MIX_ALGOLIA_APPEND);

autocomplete('#aa-search-input', {}, [
  {
    source: autocomplete.sources.hits(products, { hitsPerPage: 3 }),
    displayKey: 'name',
    templates: {
      header: '<div class="aa-suggestions-category">Products</div>',
      suggestion: function(suggestion) {
        return '<a href="'+ suggestion.url +'"><span>' +
          suggestion._highlightResult.name.value + '</span></a>';
      }
    }
  },
  {
    source: autocomplete.sources.hits(categories, { hitsPerPage: 3 }),
    displayKey: 'name',
    templates: {
      header: '<div class="aa-suggestions-category">Categories</div>',
      suggestion: function(suggestion) {
        return '<a href="'+ suggestion.url +'"><span>' +
          suggestion._highlightResult.name.value + '</span></a>';
      }
    }
  }
]);