require 'rails_helper'

RSpec.describe CommerceService do
  describe 'instance methods' do
    describe '#call' do
      it 'returns a parsed json response from the merchants endpoint' do
        response = CommerceService.new.call('/api/v1/merchants')

        expect(response).to have_key(:data)
        expect(response[:data]).to be_a Array
        expect(response[:data][0][:id]).to be_a String
        expect(response[:data][0][:type]).to be_a String
        expect(response[:data][0][:attributes]).to be_a Hash
        expect(response[:data][0][:attributes][:name]).to be_a String
      end

      it 'returns a parsed json response from a specific merchant endpoint' do
        response = CommerceService.new.call('/api/v1/merchants/1')

        expect(response).to have_key(:data)
        expect(response[:data]).to be_a Hash
        expect(response[:data][:id]).to be_a String
        expect(response[:data][:type]).to be_a String
        expect(response[:data][:attributes]).to be_a Hash
        expect(response[:data][:attributes][:name]).to be_a String
      end
    end
  end
end
