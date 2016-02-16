class Dragon
  def initialize(name, color, rider)
    @name = name
    @rider = rider
    @color = color
    @hunger = 3
  end
  def name
    @name
  end
  def rider
    @rider
  end
  def color
    @color
  end
  def hungry?
    @hunger <= 3 && @hunger != 0
  end
  def eat
    @hunger -= 1
  end
end
