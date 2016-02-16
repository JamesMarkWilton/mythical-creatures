class Wizard
  def initialize(name, bearded= true)
    @name = name
    @bearded = bearded
    @stamina = 0
  end

  def name
    @name
  end

  def bearded?
    @bearded
  end

  def incantation(magic)
    "sudo #{magic}"
  end

  def rested?
    @stamina < 3
  end

  def cast
    @stamina += 1
    "MAGIC MISSILE!"
  end

end
