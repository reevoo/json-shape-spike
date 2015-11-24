require 'reevoo/product'

module Reevoo
  class API < Grape::API
    format :json
    # formatter :json, Grape::Formatter::Roar

    resource :products do
      desc 'Return a list of products'
      get do
        present Product.all.map(&:to_h)
      end
    end
  end
end
