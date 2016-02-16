class Centaur
  def initialize(name, breed)
    @status = {name: name, breed: breed, cranky: false, standing: true, count: 0}
  end

  def name
    @status[:name]
  end

  def breed
    @status[:breed]
  end

  def shoot
    @status[:count] = @status[:count] + 1

    if @status[:count] < 3 and @status[:standing] != false
      @status[:cranky] = true
      "Twang!!!"
    else
      "NO!"
    end
  end

  def run
    @status[:count] = @status[:count] + 1

    if @status[:count] < 3 && @status[:standing] != false
      @status[:cranky] = true
      "Clop clop clop clop!!!"
    else
      "NO!"
    end
  end

  def cranky?
    @status[:cranky]
  end

  def standing?
    @status[:standing]
  end

  def sleep
    if @status[:standing] == true
    "NO!"
    else
      @status[:cranky] = false
      @status[:count] = 0
    end
  end

  def lay_down
    @status[:standing] = false
  end

  def laying?
    @status[:standing] == false
  end

  def stand_up
    @status[:standing] = true
  end
end
