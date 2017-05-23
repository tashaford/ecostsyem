require "minitest/autorun"
require "minitest/rg"

require_relative "../river.rb"
require_relative "../fish.rb"

class TestRiver < MiniTest::Test

  def setup()

    @river = River.new("Clyde")

    @fish_1 = Fish.new("Graham")
    @fish_2 = Fish.new("Ally")

  end

  def test_get_river_name()
    assert_equal("Clyde", @river.get_name())
  end

  def test_river_contains_fish()
    @river.put_in_fish(@fish_1)
    @river.put_in_fish(@fish_2)
    assert_equal(2, @river.river_count())
  end

end