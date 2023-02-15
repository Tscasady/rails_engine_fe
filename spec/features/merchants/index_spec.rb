require 'rails_helper'

RSpec.describe 'The Merchant Index page', type: :feature do
  describe 'displays all merchants' do
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
