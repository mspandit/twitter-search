# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :search_configuration do
    twitter_handle "MyString"
    twitter_search_string "MyString"
    twitter_consumer_key "MyString"
    twitter_consumer_secret "MyString"
    twitter_token "MyString"
    twitter_secret "MyString"
  end
end
