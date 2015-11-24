require 'roar/json'

module Reevoo
  module ProductRepresenter
    include Roar::JSON
    include Roar::Hypermedia
    include Grape::Roar::Representer

    property :id
    property :name
  end
end
