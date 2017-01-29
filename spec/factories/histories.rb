FactoryGirl.define do
  factory :history do
    search       { FFaker::Book.title }
    count_search 1
    article      true
    ip_user      "127.0.0.0"
  end
end
