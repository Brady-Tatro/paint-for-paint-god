require 'rails_helper'

feature 'All Model Pictures are Shown' do
  context 'see all models with army base and primer' do
    let!(:picture1) { FactoryGirl.create(:picture) }
    let!(:picture2) { FactoryGirl.create(:picture, army: "Raven Guard")}
    before do
      visit pictures_path
    end

    scenario "All models are on the screen" do
      expect(page).to have_content(picture1.army)
      expect(page).to have_content(picture1.primer)
      expect(page).to have_content(picture1.base)
      expect(page).to have_content(picture2.army)
      expect(page).to have_content(picture2.primer)
      expect(page).to have_content(picture2.base)
    end
  end
end
