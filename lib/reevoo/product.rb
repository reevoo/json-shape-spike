module Reevoo
  class Product < Struct.new(:id, :name)
    def self.all
      index = 0
      ['Batmobile', 'Stargate', 'Lightsaber'].map {|name| Product.new(index += 1, name) }
    end
  end
end
