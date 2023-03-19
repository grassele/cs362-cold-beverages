require_relative '../lib/water_dispenser'

describe 'A water dispenser' do

    it 'drains a reservoir the volume of the vessel and fills the vessel' do
        vessel = Vessel.new('TestVessel', 10)
        reservoir = WaterReservoir.new(20, 15)
        dispenser = WaterDispenser.new(reservoir)
        dispenser.dispense(vessel)
        expect(reservoir.current_water_volume).to eq(5)
        expect(vessel.empty?).to be_falsy
    end

    it 'does not fill vessel if there is nothing in the reservoir' do
        vessel = Vessel.new('TestVessel', 10)
        reservoir = WaterReservoir.new(20, 0)
        dispenser = WaterDispenser.new(reservoir)
        dispenser.dispense(vessel)
        expect(reservoir.current_water_volume).to eq(0)
        expect(vessel.empty?).to be_truthy
    end

end
