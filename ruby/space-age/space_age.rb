class SpaceAge

  def initialize(time_in_sec)
    @time = time_in_sec
  end

  def on_earth
   (@time/31_557_600.00).round(2)
  end

  def on_mercury
    (self.on_earth / 0.2408467).round(2)
  end

  def on_venus
    (self.on_earth / 0.61519726).round(2)
  end

  def on_mars
    (self.on_earth / 1.8808158).round(2)
  end

  def on_jupiter
    (self.on_earth / 11.862615).round(2)
  end

  def on_saturn
    (self.on_earth / 29.447498).round(2)
  end

  def on_uranus
    (self.on_earth / 84.016846).round(2)
  end

  def on_neptune
    (self.on_earth / 164.79132).round(2)
  end 

end

