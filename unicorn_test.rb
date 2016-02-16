gem 'minitest', '~> 5.2'    # => true
require 'minitest/autorun'  # => true
require 'minitest/pride'    # => true
require_relative 'unicorn'  # ~> LoadError: cannot load such file -- /private/var/folders/sk/3yzbln0d24s841ky8rrr250c0000gp/T/seeing_is_believing_temp_dir20160212-53689-1kkjc8e/unicorn

class UnicornTest < Minitest::Test

  def test_it_has_a_name
    unicorn = Unicorn.new("Robert")
    assert_equal "Robert", unicorn.name
  end

  def test_it_is_white_by_default
    unicorn = Unicorn.new("Margaret")
    assert_equal "white", unicorn.color
    assert_equal true, unicorn.white?
    assert unicorn.white?
  end

  def test_it_does_not_have_to_be_white
    unicorn = Unicorn.new("Barbara", "purple")
    assert_equal "purple", unicorn.color
    assert_equal false, unicorn.white?
    refute unicorn.white?
  end

  def test_unicorn_says_sparkly_stuff
    unicorn = Unicorn.new("Johnny")
    assert_equal "**;* Wonderful! **;*", unicorn.say("Wonderful!")
    assert_equal "**;* I don't like you very much. **;*", unicorn.say("I don't like you very much.")
  end

end

# ~> LoadError
# ~> cannot load such file -- /private/var/folders/sk/3yzbln0d24s841ky8rrr250c0000gp/T/seeing_is_believing_temp_dir20160212-53689-1kkjc8e/unicorn
# ~>
# ~> /var/folders/sk/3yzbln0d24s841ky8rrr250c0000gp/T/seeing_is_believing_temp_dir20160212-53689-1kkjc8e/program.rb:4:in `require_relative'
# ~> /var/folders/sk/3yzbln0d24s841ky8rrr250c0000gp/T/seeing_is_believing_temp_dir20160212-53689-1kkjc8e/program.rb:4:in `<main>'
