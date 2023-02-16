require 'rails_helper'

RSpec.describe Item do
  let!(:data) { { id: 1, attributes: { name: 'Test Item' } } }
  let!(:item) { Item.new(data) }

  it 'has readable attributes' do
    expect(item.id).to eq 1
    expect(item.name).to eq 'Test Item'
  end
end
