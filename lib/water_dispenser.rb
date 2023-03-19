class WaterDispenser

  attr_reader :reservoir

  def initialize(reservoir)
    @reservoir = reservoir
  end

  def dispense(vessel)
    if reservoir.current_water_volume > 0
      reservoir.drain(vessel.volume)
      vessel.fill   # added this line
    end
  end

end
