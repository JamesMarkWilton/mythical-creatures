class Vampire
  def initialize(name, pet="bat")
    @name = name
    @pet = pet
    @thirst = true
  end
  def name
    @name
  end
  def pet
    @pet
  end
  def thirsty?
    @thirst
  end
  def drink
    @thirst = false
  end
end
