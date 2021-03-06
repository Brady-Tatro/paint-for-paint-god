require 'rails_helper'

feature 'user adds a model without a photo' do
  context 'user adds a model by selecting values' do
    before do
      visit new_picture_path
    end
    scenario 'choose an army' do
      choose('picture_army_necrons')
      click_button("Add Miniature")
      expect(page).to have_content("Miniature added successfully")
    end
    scenario 'no army is chosen' do
      click_button('Add Miniature')
      expect(page).to have_content("Army can't be blank")
    end
  end
end
