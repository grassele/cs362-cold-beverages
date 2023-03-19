require_relative '../lib/item'

describe 'An item of food or a beverage' do

    it 'has a name and volume set upon creation' do
        item = Item.new('FAKE', 1)
        expect(item.name).to eq('FAKE')
        expect(item.volume).to eq(1)
      end

end