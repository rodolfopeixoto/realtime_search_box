require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:article) { FactoryGirl.build(:article) }

  it { should respond_to(:title) }
  it { should respond_to(:content) }

  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:content) }
  end

  before do
    Article.import(force: true, refresh: true)
  end

end
