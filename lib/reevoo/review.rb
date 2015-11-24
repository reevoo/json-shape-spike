module Reevoo
  class Review < Struct.new(:id, :content)
    def self.all
      ['Good stuff', 'Bad experience'].each_with_index.map {|content, i| Review.new(i + 1, content) }
    end
  end
end
