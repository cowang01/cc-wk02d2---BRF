

class River

  attr_accessor :name, :fish

  def initialize(name)
    @name = name
    @fish = []
  end


  def add_fish(fish)
    @fish << fish
  end

  def bear_eats_fish(bear, fishy)
    for fish in @fish
      if fish == fishy
        @fish.delete(fishy)
        bear.stomach << fishy
      end
    end

  end
  

end
