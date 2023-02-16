require 'rails_helper'

RSpec.describe Merchant do
  let!(:data) { { id: 1, attributes: { name: 'Test Merchant' } } }
  let!(:merchant) { Merchant.new(data) }

  it 'has readable attributes' do
    expect(merchant.id).to eq 1
    expect(merchant.name).to eq 'Test Merchant'
  end
end
