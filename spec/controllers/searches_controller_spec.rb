require 'rails_helper'

RSpec.describe SearchesController, type: :controller do

  describe "GET #search" do
    before do
      get :index, params: { q: 'an example query string' }, format: :json
      expect(response).to be_success
    end
    it { is_expected.to respond_with 200}
    it "return all articles titles" do
      parsed_response = JSON.parse(response.body)
      expect(parsed_response).to_not be_nil
    end
    it "return 0 if the articles titles empty" do
      parsed_response = JSON.parse(response.body)
      expect(parsed_response.size).to eq(0)
    end
  end

end
