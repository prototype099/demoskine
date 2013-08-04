require 'spec_helper'

describe "projects/new" do
  before(:each) do
    assign(:project, stub_model(Project,
      :name => "MyString",
      :description => "MyText",
      :owner_id => 1,
      :access_token => "MyString",
      :secret => "MyString",
      :archive => 1
    ).as_new_record)
  end

  it "renders new project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", projects_path, "post" do
      assert_select "input#project_name[name=?]", "project[name]"
      assert_select "textarea#project_description[name=?]", "project[description]"
      assert_select "input#project_owner_id[name=?]", "project[owner_id]"
      assert_select "input#project_access_token[name=?]", "project[access_token]"
      assert_select "input#project_secret[name=?]", "project[secret]"
      assert_select "input#project_archive[name=?]", "project[archive]"
    end
  end
end
