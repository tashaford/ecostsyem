require "minitest/autorun"
require "minitest/rg"

require_relative "../fish.rb"

class TestFish < MiniTest::Test

  def setup()

    @fish_1 = Fish.new("Graham")
    @fish_2 = Fish.new("Ally")

  end

  def test_get_fish_name()
    assert_equal("Graham", @fish_1.get_name())
  end

end