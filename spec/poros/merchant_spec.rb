require 'rails_helper'

RSpec.describe Merchant do
  let!(:data) { { attributes: { name: 'Test Merchant' } } }
  let!(:merchant) { Merchant.new(data) }

  it 'has readable attributes' do
    expect(merchant.name).to eq 'Test Merchant'
  end
end
