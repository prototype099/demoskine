require 'spec_helper'

describe "stories/index" do
  before(:each) do
    assign(:stories, [
      stub_model(Story,
        :project_id => 1,
        :content => "MyText",
        :tracker_id => 2,
        :points => 3,
        :requester_id => 4,
        :owner_id => 5,
        :status => 6
      ),
      stub_model(Story,
        :project_id => 1,
        :content => "MyText",
        :tracker_id => 2,
        :points => 3,
        :requester_id => 4,
        :owner_id => 5,
        :status => 6
      )
    ])
  end

  it "renders a list of stories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
