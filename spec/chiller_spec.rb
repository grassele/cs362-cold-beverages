require_relative '../lib/chiller'

describe 'A chiller' do

    it 'has a default capacity of 100' do
        chiller = Chiller.new
        expect(chiller.capacity).to eq(100)
    end

    it 'can have custom capacity upon initialization' do
        chiller = Chiller.new(1000)
        expect(chiller.capacity).to eq(1000)
    end

    it 'adds items, reduces capacity when items are added' do
        chiller = Chiller.new(100)
        item = Item.new('TestItem', 5)
        chiller.add(item)
        expect(chiller.remaining_capacity).to eq(95)
    end

    it 'changes temperature to 60 degrees when level is set to 2' do
        chiller = Chiller.new
        chiller.set_level(2)
        expect(chiller.temperature).to eq(60)
    end

end
