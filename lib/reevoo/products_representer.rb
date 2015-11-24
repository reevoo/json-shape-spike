# require 'roar/json/json_api'
require 'roar/json/hal'
require 'reevoo/product_representer'

module Reevoo
  module ProductsRepresenter
    include Roar::JSON::HAL
    include Roar::Hypermedia
    include Grape::Roar::Representer

    collection :entries, extend: ProductRepresenter, as: :products
  end
end
