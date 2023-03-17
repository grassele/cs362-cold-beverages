require_relative '../lib/water_dispenser'

describe 'A water dispenser' do

    it 'drains a reservoir the amount of the vessel and fills the vessel' do
        vessel = Vessel.new('TestVessel', 10)
        reservoir = WaterReservoir.new(20, 15)
        dispenser = WaterDispenser.new(reservoir)
        dispenser.dispense(vessel)
        expect(reservoir.current_water_volume).to eq(5)
        expect(vessel.volume).to eq(10)
    end

end
