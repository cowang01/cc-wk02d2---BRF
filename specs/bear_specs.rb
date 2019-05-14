
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
    # @river_a = River.new("The Blue")
    #
    # @river_a.fish = [@fishy1, @fishy2, @fishy3, @fishy4]
  end



  def test_bear_name
    assert_equal("Yogi", @bear_1.name)
  end

  # def test_eats_fish
  #   @bear_1.eats_fish(@fishy2)
  #   @bear_1.eats_fish(@fishy3)
  #   assert_equal(2, @bear_1.stomach.size())
  #   assert_equal(2, @river_a.fish.size())
  # end



end
