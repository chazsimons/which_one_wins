class Character
  attr_reader :name,
              :image

  def initialize(data)
    @name = data[:name]
    @image = data[:image][:original_url]
  end
end
