require_relative '../lib/water_reservoir'

describe 'A water reservoir' do

    it 'has default capacity and current water volume upon initialization' do
        reservoir = WaterReservoir.new
        expect(reservoir.capacity).to eq(10)
        expect(reservoir.current_water_volume).to eq(0)
    end

    it 'can have custom capacity and current water volume upon initialization' do
        reservoir = WaterReservoir.new(15, 5)
        expect(reservoir.capacity).to eq(15)
        expect(reservoir.current_water_volume).to eq(5)
    end

    it 'is empty when volume is 0' do
        reservoir = WaterReservoir.new(10, 0)
        expect(reservoir.empty?).to be_truthy
    end

    it 'is not empty when volume is than 0' do
        reservoir = WaterReservoir.new(10, 1)
        expect(reservoir.empty?).to be_falsy
    end

    it 'has volume equal to capacity after filled' do
        reservoir = WaterReservoir.new(10, 0)
        reservoir.fill
        expect(reservoir.current_water_volume).to eq(reservoir.capacity)
    end

    it 'drains by the requested volume' do
        reservoir = WaterReservoir.new(10, 10)
        reservoir.drain(3)
        expect(reservoir.current_water_volume).to eq(7)
    end

    it 'cannot drain more than the current volume' do
        reservoir = WaterReservoir.new(10, 10)
        reservoir.drain(15)
        expect(reservoir.current_water_volume).to eq(0)
    end


end
