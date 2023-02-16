require 'rails_helper'

RSpec.describe CommerceFacade do
  describe 'instance methods' do
    before(:each) do
      @facade = CommerceFacade.new
    end

    describe '#merchants' do
      it 'returns an array of merchant objects' do
        merchants = @facade.merchants
        expect(merchants).to be_a Array
        expect(merchants.first).to be_a Merchant
      end
    end

    describe '#merchant' do
      it 'returns a merchant object' do
        merchant = @facade.merchant(1)
        expect(merchant).to be_a Merchant
      end
    end

    describe '#merchant_items' do
      it 'returns a list of items' do
        items = @facade.merchant_items(1)
        expect(items).to be_a Array
        expect(items.first).to be_a Item
      end
    end

    describe '#items' do
      it 'returns an array of item objects' do
        items = @facade.items
        expect(items).to be_a Array
        expect(items.first).to be_a Item
      end
    end

    describe '#item' do
      it 'returns an item object' do
        item = @facade.item(4)
        expect(item).to be_a Item
      end
    end
  end
end
