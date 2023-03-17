class WaterReservoir

  attr_reader :capacity
  attr_accessor :current_water_volume

  def initialize(capacity = 10, initial_water_volume = 0)
    @capacity = capacity
    @current_water_volume = initial_water_volume
  end

  def empty?
    current_water_volume == 0
  end

  def fill
    @current_water_volume = capacity    # added the @ to make current_water_volume an instance variable
  end

  def drain(volume)
    self.current_water_volume -= volume
  end

end
