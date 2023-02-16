require 'rails_helper'

RSpec.describe 'The item show page', type: :feature do
  describe 'displays item data' do
    it "shows the item's name" do
      visit item_path(4)
      expect(page).to have_content "Name: Item Nemo Facere" 
      expect(page).to have_content "Unit Price: " 
      expect(page).to have_content "Description: " 
    end
  end
end
