require 'rails_helper'

RSpec.feature "Users can search for articles" do
  let(:article) { FactoryGirl.create(:article) }

  before do
    visit '/'
  end

  scenario "searching full-text" do
    fill_in 'Search', with: title
    click 'Search'
    within("#content") do
      expect(page).to have_content title
    end
  end
end
