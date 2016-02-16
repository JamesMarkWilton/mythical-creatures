class Werewolf
 def initialize(name, loc=nil)
   @name = name
   @loc = loc
   @human = true
   @hunger = false
 end

  def name
    @name
  end

  def location
    @loc
  end

  def human?
    @human
  end

  def change!
    if @human == false
      @human = true
    else
      @human = false
      @hunger = true
    end
  end

  def wolf?
    @human == false
  end

  def hungry?
    @hunger
  end

  def eat!(victim)
    @hunger = false
    victim.kill
  end

end
