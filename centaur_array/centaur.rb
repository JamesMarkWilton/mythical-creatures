class Centaur
  STANDING = 2
  COUNT = 3
  def initialize(name, breed)
    @status = [].push  name, breed, true, 0
  end

  def name
    @status[0]
  end

  def breed
    @status[1]
  end

  def shoot
    @status[COUNT] += 1

    if cranky? or laying?
      "NO!"
    else
      "Twang!!!"
    end
  end

  def run
    @status[COUNT] += 1

    if cranky? or laying?
      "NO!"
    else
      "Clop clop clop clop!!!"
    end
  end

  def cranky?
    @status[COUNT] >= 3
  end

  def standing?
    @status[STANDING]
  end

  def sleep
    if standing?
    "NO!"
    else
      @status[COUNT] = 0
    end
  end

  def lay_down
    @status[STANDING] = false
  end

  def laying?
    !@status[STANDING]
  end

  def stand_up
    @status[STANDING] = true
  end
end
