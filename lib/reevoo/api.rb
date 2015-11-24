require 'reevoo/product'
require 'reevoo/products_representer'

module Reevoo
  class API < Grape::API
    format :json
    # formatter :json, Grape::Formatter::Roar

    resource :products do
      desc 'Return a list of products'
      get do
        present Product.all, with: ProductsRepresenter
      end
    end
  end
end
