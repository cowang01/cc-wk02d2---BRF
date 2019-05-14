

class Bear

  attr_reader :name, :type, :stomach
  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []

  end


  def eats_fish(fish)
    @stomach << fish
  end

  def roar()
    return "ROAR!"
  end

  def food_count()
    return @stomach.size()
  end

  
end
