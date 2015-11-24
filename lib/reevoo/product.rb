module Reevoo
  class Product < Struct.new(:id, :name)
    def self.all
      ['Batmobile', 'Stargate', 'Lightsaber'].each_with_index.map {|name, i| Product.new(i + 1, name) }
    end
  end
end
