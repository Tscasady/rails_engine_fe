require 'rails_helper'

RSpec.describe 'The merchant show page', type: :feature do
  describe 'displays merchant data' do
    before :each do
      visit merchant_path(1)
    end

    it 'shows the merchants name' do
      expect(page).to have_content "Schroeder-Jerde" 
    end

    it 'displays a list of merchant items' do
      expect(page).to have_content 'Item Nemo Facere'
    end
  end
end
