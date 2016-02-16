gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'medusa' # ~> LoadError: cannot load such file -- /private/var/folders/sk/3yzbln0d24s841ky8rrr250c0000gp/T/seeing_is_believing_temp_dir20160213-56396-ge83pg/medusa

class MedusaTest < Minitest::Test
  def test_it_has_a_name
    medusa = Medusa.new("Cassiopeia")
    assert_equal "Cassiopeia", medusa.name
  end

  def test_when_first_created_she_has_no_statues
    medusa = Medusa.new("Cassiopeia")
    assert medusa.statues_empty?
  end

  def test_when_staring_at_a_person_she_gains_a_statue
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus") # =>

    medusa.stare(victim)
    assert_equal 1, medusa.statues_count?
    assert_equal "Perseus", medusa.statues_first_name
  end

  def test_when_staring_at_a_person_that_person_turns_to_stone
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    refute victim.stoned?
    medusa.stare(victim)
    assert victim.stoned?
  end

  def test_can_only_have_three_victims
    medusa = Medusa.new("Lilith")
    assert_equal 0, medusa.statues_count?
    victim1 = Person.new("Joe")
    victim2 = Person.new("Bob")
    victim3 = Person.new("Briggs")
    victim4 = Person.new("Name")
    medusa.stare(victim1)
    medusa.stare(victim2)
    medusa.stare(victim3)
    assert_equal 3, medusa.statues_count?
    medusa.stare(victim4)
    assert_equal 3, medusa.statues_count?
  end

  def test_if_a_fourth_victim_is_stoned_first_is_unstoned
    medusa = Medusa.new("Lilith")
    assert_equal 0, medusa.statues_count?
    victim1 = Person.new("Joe")
    victim2 = Person.new("Bob")
    victim3 = Person.new("Briggs")
    victim4 = Person.new("Name")
    medusa.stare(victim1)
    medusa.stare(victim2)
    medusa.stare(victim3)
    assert_equal 3, medusa.statues_count?
    medusa.stare(victim4)
    refute victim1.stoned?
    assert_equal 3, medusa.statues_count?
  end

end

# ~> LoadError
# ~> cannot load such file -- /private/var/folders/sk/3yzbln0d24s841ky8rrr250c0000gp/T/seeing_is_believing_temp_dir20160213-56396-ge83pg/medusa
# ~>
# ~> /var/folders/sk/3yzbln0d24s841ky8rrr250c0000gp/T/seeing_is_believing_temp_dir20160213-56396-ge83pg/program.rb:4:in `require_relative'
# ~> /var/folders/sk/3yzbln0d24s841ky8rrr250c0000gp/T/seeing_is_believing_temp_dir20160213-56396-ge83pg/program.rb:4:in `<main>'
