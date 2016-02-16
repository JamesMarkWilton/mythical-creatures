class Centaur
  def initialize(name, breed)
    @status = [].push  name, breed, false, true, 0
  end

  def name
    @status[0]
  end

  def breed
    @status[1]
  end

  def shoot
    @status[4] = @status[4] + 1

    if @status[4] < 3 and @status[3]
      @status[2] = true
      "Twang!!!"
    else
      "NO!"
    end
  end

  def run
    @status[4] = @status[4] + 1

    if @status[4] < 3 and @status[3]
      @status[2] = true
      "Clop clop clop clop!!!"
    else
      "NO!"
    end
  end

  def cranky?
    @status[2]
  end

  def standing?
    @status[3]
  end

  def sleep
    if @status[3]
    "NO!"
    else
      @status[2] = false
      @status[4] = 0
    end
  end

  def lay_down
    @status[3] = false
  end

  def laying?
    @status[3] == false
  end

  def stand_up
    @status[3] = true
  end
end
