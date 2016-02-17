class Centaur
   attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @standing = true
    @cranky = 0
    @sleeping = false
  end

  def work(sound)
    if cranky? || laying?
      "NO!"
    else
      @cranky += 1
      sound
    end
  end

  def shoot
    work "Twang!!!"
  end

  def run
    work "Clop clop clop clop!!!"
  end

  def cranky?
    @cranky >= 3
  end

  def standing?
    @standing
  end

  def sleep
    if standing?
      "NO!"
    else
      @cranky = 0
    end
  end

  def lay_down
    @standing = false
  end

  def laying?
    !@standing
  end

  def stand_up
    @standing = true
  end

  def drink_potion
    if standing?
      @cranky = 0
    else
      @cranky = 3
      "NO!"
    end
  end
end
