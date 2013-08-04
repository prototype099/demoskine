# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    name "MyString"
    description "MyText"
    owner_id 1
    access_token "MyString"
    secret "MyString"
    archive 1
  end
end
