require 'rails_helper'

feature 'All Paint colors are shown' do
  context 'on the index page, all colors are shown' do
    let!(:color1) { FactoryGirl.create(:color) }
    let!(:color2) { FactoryGirl.create(:color) }
    before do
      visit root_path
    end
    scenario 'all color names are on page' do
      expect(page).to have_content(color1.name)
      expect(page).to have_content(color2.name)
    end
  end
end
