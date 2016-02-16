class Hobbit
  def initialize(name, dispos= "homebody")
    @name = name
    @dispos = dispos
    @age = 0
  end
  def name
    @name
  end
  def disposition
    @dispos
  end
  def celebrate_birthday
    @age += 1
  end
  def age
    @age
  end
  def adult?
    @age >= 33
  end
  def old?
    @age >= 100
  end
  def has_ring?
    if @name == "Frodo"
      true
    else
      false
    end
  end
  def is_short?
    true
  end
end
