class River

  def initialize(name)
    @name = name
    @water = []

  end

  def get_name()
    return @name
  end

  def put_in_fish(fish)
    @water << fish
  end

  def river_count()
    @water.count()
  end

  def get_water()
    return @water
  end

  

end