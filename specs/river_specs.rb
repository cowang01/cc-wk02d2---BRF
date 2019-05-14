

require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')



class RiverTest < MiniTest::Test
  def setup
    @fishy1 = Fish.new("Bob")
    @fishy2 = Fish.new("Tom")
    @fishy3 = Fish.new("Dot")
    @fishy4 = Fish.new("Loc")

    @river_a = River.new("The Blue")
    @bear_1 = Bear.new("Yogi", "Brown")

    @river_a.fish = [@fishy1, @fishy2, @fishy3, @fishy4]
  end



  def test_river_name
    assert_equal("The Blue", @river_a.name)
  end

  def test_fish_in_river
    assert_equal(4, @river_a.fish.size)
  end

  def test_bear_eats_fish
    @river_a.bear_eats_fish(@bear_1, @fishy3)
    @river_a.bear_eats_fish(@bear_1, @fishy2)
    assert_equal(2, @bear_1.stomach.size())
    assert_equal(2, @river_a.fish.size)
  end




end
