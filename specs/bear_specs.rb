
require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../fish.rb')
# require_relative('../river.rb')



class BearTest < MiniTest::Test

  def setup
    @fishy1 = Fish.new("Bob")
    @fishy2 = Fish.new("Tom")
    @fishy3 = Fish.new("Dot")
    @fishy4 = Fish.new("Loc")

    @bear_1 = Bear.new("Yogi", "Brown")

  end



  def test_bear_name
    assert_equal("Yogi", @bear_1.name)
  end

  def test_eats_fish
    @bear_1.eats_fish(@fishy4)
    assert_equal(1, @bear_1.stomach.count)
  end

  def test_roar
    assert_equal("ROAR!", @bear_1.roar())
  end

  def test_food_count
    @bear_1.eats_fish(@fishy3)
    @bear_1.eats_fish(@fishy2)
    @bear_1.eats_fish(@fishy4)
    assert_equal(3, @bear_1.food_count())
  end



end
