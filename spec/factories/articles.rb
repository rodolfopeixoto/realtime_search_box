FactoryGirl.define do
  factory :article do
    title   { FFaker::Book.title }
    content { FFaker::Book.description }
  end
end
