require 'rails_helper'

RSpec.describe 'The Merchant Index page', type: :feature do
  describe 'displays all merchants' do
    WebMock.stub_request(:get, "localhost:3000/api/v1/merchants")
      .to_return(body: File.read('./spec/fixtures/merchants.json'))

    before :each do
      visit merchants_path
    end

    it 'has a list of merchants' do
      expect(page).to have_content("A Name")
      expect(page).to have_content("Another Name")
    end

    it 'has links to each merchant show page' do
      expect(page).to have_link "A Name"

      click_link "A Name"

      expect(current_path).to eq merchant_path 
    end
  end
end
