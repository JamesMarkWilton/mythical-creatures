class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @standing = true
    @cranky = 0
    @sleeping = false
    @laying = false
  end

  def shoot
    if cranky? || laying?
      "NO!"
    else
    @cranky += 1
    "Twang!!!"
    end
  end

  def run
    if cranky? || laying?
      "NO!"
    else
    @cranky += 1
    "Clop clop clop clop!!!"
    end
  end

  def cranky?
    @cranky >= 3
  end

  def standing?
    @standing
  end

  def sleep
  if @standing
    "NO!"
  else
    @cranky = 0
  end
  end

  def lay_down
    @laying = true
    @standing = false
  end

  def laying?
    @laying
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def drink_potion
    if @standing
    @cranky = 0
    else
      @cranky = 3
      "NO!"
    end
  end
end
