require_relative '../lib/freezer'

describe 'A freezer' do

    it 'has a default capacity of 100' do
        freezer = Freezer.new
        expect(freezer.capacity).to eq(100)
    end

    it 'can have custom capacity upon initialization' do
        freezer = Freezer.new(1000)
        expect(freezer.capacity).to eq(1000)
    end

    it 'reduces capacity when items are added' do
        freezer = Freezer.new(100)
        item = Item.new('TestItem', 5)
        freezer.add(item)
        expect(freezer.remaining_capacity).to eq(95)
    end

    it 'changes temperature to 50 degrees when level is set to 2' do
        freezer = Freezer.new
        freezer.set_level(2)
        expect(freezer.temperature).to eq(50)
    end

end
