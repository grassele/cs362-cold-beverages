class WaterReservoir

  attr_reader :capacity
  attr_accessor :current_water_volume

  def initialize(capacity = 10, initial_water_volume = 0)
    @capacity = capacity
    if initial_water_volume >= 0
      @current_water_volume = initial_water_volume
    else
      @current_water_volume = 0
    end
  end

  def empty?
    current_water_volume == 0
  end

  def fill
    @current_water_volume = capacity    # added the @ to make current_water_volume an instance variable
  end

  def drain(volume)
    if current_water_volume >= volume
      self.current_water_volume -= volume
    else
      self.current_water_volume = 0
    end
  end

end
