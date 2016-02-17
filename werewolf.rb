class Werewolf
  attr_accessor :name, :location

  def initialize(name, loc=nil)
   @name = name
   @location = loc
   @human = true
   @hunger = false
  end

  def human?
   @human
  end

  def change!
   if wolf?
     @human = true
   else
     @human = false
     @hunger = true
   end
  end

  def wolf?
    !@human
  end

  def hungry?
    @hunger
  end

  def eat!(victim)
    @hunger = false
    victim.kill
  end
end

Test.rb

