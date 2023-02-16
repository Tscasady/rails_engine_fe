require 'rails_helper'

RSpec.describe 'The Item Index page', type: :feature do
  describe 'displays all items' do
    before :each do
      visit items_path
    end

    it 'has a list of items' do
      expect(page).to have_content('Item Nemo Facere')
      expect(page).to have_content('Item Expedita Aliquam')
    end
  end
end
