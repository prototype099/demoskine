require 'spec_helper'

describe "stories/new" do
  before(:each) do
    assign(:story, stub_model(Story,
      :project_id => 1,
      :content => "MyText",
      :tracker_id => 1,
      :points => 1,
      :requester_id => 1,
      :owner_id => 1,
      :status => 1
    ).as_new_record)
  end

  it "renders new story form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", stories_path, "post" do
      assert_select "input#story_project_id[name=?]", "story[project_id]"
      assert_select "textarea#story_content[name=?]", "story[content]"
      assert_select "input#story_tracker_id[name=?]", "story[tracker_id]"
      assert_select "input#story_points[name=?]", "story[points]"
      assert_select "input#story_requester_id[name=?]", "story[requester_id]"
      assert_select "input#story_owner_id[name=?]", "story[owner_id]"
      assert_select "input#story_status[name=?]", "story[status]"
    end
  end
end
