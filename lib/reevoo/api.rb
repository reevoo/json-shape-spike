require 'reevoo/product'
require 'reevoo/review'
require 'reevoo/products_representer'
require 'reevoo/reviews_representer'

module Reevoo
  class API < Grape::API
    format :json
    formatter :json, Grape::Formatter::Roar

    resource :products do
      desc 'Return a list of products'
      get do
        present Product.all, with: ProductsRepresenter
      end

      get ':id/reviews' do
        present Review.all, with: ReviewsRepresenter
      end
    end
  end
end
