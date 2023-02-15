require 'rails_helper'

RSpec.describe CommerceFacade do
  describe 'instance methods' do
    before :each do
      facade = CommerceFacade.new
    end
    describe '#merchants' do
      it 'returns an array of merchant objects' do
        merchants = facade.merchants
        expect(merchants).to be_a Array
        expect(merchants.first).to be_a Merchant
      end
    end

    describe '#merchant' do
      it 'returns a merchant object' do
        merchant = facade.merchant
        expect(merchant).to be a Merchant
      end
    end
  end
end
