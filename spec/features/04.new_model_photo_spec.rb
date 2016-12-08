require 'rails_helper'

feature 'user adds a model without a photo' do
  context 'user adds a model by selecting values' do
    before do
      visit new_picture_path
      choose('picture_army_necrons')
    end
    scenario 'someone adds a photo of the model' do
      attach_file "picture_photo", "#{Rails.root}/spec/support/images/necron.jpg"
      click_button('Add Miniature')
      expect(page).to have_content('Miniature added successfully')
    end
  end
end
