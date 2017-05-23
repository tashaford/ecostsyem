require "minitest/autorun"
require "minitest/rg"

require_relative "../bear.rb"
require_relative "../river.rb"
require_relative "../fish.rb"

class TestBear < MiniTest::Test

  def setup()

    @bear = Bear.new("Adam")
    @river = River.new("Clyde")

    @fish_1 = Fish.new("Graham")
    @fish_2 = Fish.new("Ally")

  end

  def test_get_river_name()
    assert_equal("Adam", @bear.get_name())
  end

  def test_full_stomach()
    @river.put_in_fish(@fish_1)
    @river.put_in_fish(@fish_2)
    @bear.take_a_fish(@river.get_water())
    assert_equal(1, @bear.stomach_count())
    assert_equal(1, @river.river_count())
  end

  def test_stomach_count()
    @river.put_in_fish(@fish_1)
    @river.put_in_fish(@fish_2)
    @bear.take_a_fish(@river.get_water())
    assert_equal(1, @bear.stomach_count())
  end

  def test_roar()
    assert_equal("ROAR!", @bear.loud_roar())
  end

end