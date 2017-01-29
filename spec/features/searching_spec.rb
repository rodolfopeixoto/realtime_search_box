require 'rails_helper'

RSpec.feature "Users can search for articles" do
  let(:article) { FactoryGirl.create(:article) }

  before do
    visit '/'
  end

  scenario "searching full-text" do
    fill_in :query, with: article.title
    click_button 'Search'
    within("#articles") do
      expect(page).to have_content article.title
    end
  end
end
