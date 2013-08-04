# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :story do
    project_id 1
    content "MyText"
    tracker_id 1
    points 1
    requester_id 1
    owner_id 1
    status 1
  end
end
