require_relative '../lib/refrigerator'

describe 'A refrigerator' do

    let(:chiller)  { Chiller.new(100) }
    let(:freezer)   { Freezer.new(100) }
    let(:water_reservoir)  { WaterReservoir.new }
    let(:water_dispenser)  { WaterDispenser.new(water_reservoir) }
    let(:refrigerator)  { Refrigerator.new(chiller, freezer, water_dispenser, water_reservoir) }

    it 'can add item to chiller' do
        item = Item.new('FakeItem', 5)
        chiller_init_capacity = chiller.remaining_capacity
        refrigerator.chill(item)
        chiller_curr_capacity = chiller.remaining_capacity
        expect(chiller_curr_capacity).to be < chiller_init_capacity
    end

    it 'can add item to freezer' do
        item = Item.new('FakeItem', 5)
        freezer_init_capacity = freezer.remaining_capacity
        refrigerator.freeze(item)
        freezer_curr_capacity = freezer.remaining_capacity
        expect(freezer_curr_capacity).to be < freezer_init_capacity
    end

    it 'can get total capacity from freezer and chiller capacities' do
        chiller_and_freezer_capacity = chiller.capacity + freezer.capacity
        expect(refrigerator.total_capacity).to eq(chiller_and_freezer_capacity)
    end

    it 'can get total remaining capacity from freezer and chiller remaining capacities' do
        chiller_and_freezer_remaining_capacity = chiller.remaining_capacity + freezer.remaining_capacity
        expect(refrigerator.remaining_capacity).to eq(chiller_and_freezer_remaining_capacity)
    end

    it 'can set chiller level to change chiller temperature' do
        refrigerator.set_chiller_level(2)
        expect(chiller.temperature).to eq(60)
    end

    it 'can set freezer level to change freezer temperature' do
        refrigerator.set_freezer_level(2)
        expect(freezer.temperature).to eq(50)
    end

    it 'prints a status message' do
        expect(refrigerator.to_s).to be_truthy
    end

end
