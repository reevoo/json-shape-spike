require 'roar/json/hal'
require 'reevoo/product_representer'

module Reevoo
  module ReviewRepresenter
    include Roar::JSON::HAL
    include Roar::Hypermedia
    include Grape::Roar::Representer

    property :id
    property :content

    link :self do |opts|
      request = Grape::Request.new(opts[:env])
      "#{request.url}"
    end
  end

  module ReviewsRepresenter
    include Roar::JSON::HAL
    include Roar::Hypermedia
    include Grape::Roar::Representer

    collection :entries, extend: ReviewRepresenter, as: :reviews
  end
end
