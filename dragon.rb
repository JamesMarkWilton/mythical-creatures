class Dragon
  attr_reader :name, :color, :rider

  def initialize(name, color, rider)
    @name = name
    @rider = rider
    @color = color
    @hunger = 3
  end

  def hungry?
    @hunger <= 3 && @hunger != 0
  end

  def eat; @hunger -= 1 end
end


require "pry"
binding.pry

test = Dragon.new
