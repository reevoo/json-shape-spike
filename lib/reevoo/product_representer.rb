require 'roar/json'

module Reevoo
  module ProductRepresenter
    include Roar::JSON::HAL
    include Roar::Hypermedia
    include Grape::Roar::Representer

    property :id
    property :name

    link :reviews do |opts|
      "/products/#{id}/reviews"
    end

    link :add_review do |opts|
      { href: "/products/#{id}/reviews", method: 'POST' }
    end
  end
end
