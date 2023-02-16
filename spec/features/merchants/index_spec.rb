require 'rails_helper'

RSpec.describe 'The Merchant Index page', type: :feature do
  describe 'displays all merchants' do
    before :each do
      visit merchants_path
    end

    it 'has a list of merchants' do
      expect(page).to have_content('Schroeder-Jerde')
      expect(page).to have_content('Rempel and Jones')
    end

    it 'has links to each merchant show page' do
      expect(page).to have_link 'Schroeder-Jerde'

      click_link 'Schroeder-Jerde'

      expect(current_path).to eq merchant_path(1) 
    end
  end
end
