

require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')



class FishTest < MiniTest::Test

  def setup
    @fishy1 = Fish.new("Bob")
    @fishy2 = Fish.new("Tom")
    @fishy3 = Fish.new("Dot")
    @fishy4 = Fish.new("Loc")
  end



  def test_fish_name
    assert_equal("Dot", @fishy3.name)
  end




end
