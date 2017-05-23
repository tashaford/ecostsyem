class Bear

  def initialize(name)
    @name = name
    @stomach = []
  end

  def get_name()
    return @name
  end

def stomach_count()
  @stomach.count()
end

  def take_a_fish(water)
    eat_fish = water.pop()
    @stomach << eat_fish
  end

  def loud_roar()
    return "ROAR!"
  end

end