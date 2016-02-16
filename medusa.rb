class Medusa
  def initialize(name)
    @name = name
    @statues = []
  end

  def name
    @name
  end

  def statues_empty?
    @statues.length == 0
  end

  def statues_count?
    @statues.length
  end

  def stare(victim)
    if @statues.length < 3
      @statues << victim
      victim.stoned
    else
      saved = @statues.shift
      saved.unstoned
      @statues << victim
    end
  end

  def statues_first_name
    @statues[0].name
  end
end

class Person
  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

  def name
    @name
  end

  def stoned
    @stoned = true
  end

  def unstoned
    @stoned = false
  end
end

