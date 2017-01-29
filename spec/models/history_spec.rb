require 'rails_helper'

RSpec.describe History, type: :model do
  let(:history) { FactoryGirl.build(:history) }

  it { should respond_to(:search) }
  it { should respond_to(:count_search) }
  it { should respond_to(:article) }
  it { should respond_to(:ip_user) }

  describe "validations" do
    it { should validate_presence_of(:search) }
    it { should validate_presence_of(:count_search) }
    it { should validate_numericality_of(:count_search) }
    it { should validate_presence_of(:article) }
    it { should validate_presence_of(:ip_user) }
  end
end