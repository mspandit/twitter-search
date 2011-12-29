require 'spec_helper'

describe "users/index.html.erb" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :twitter_id => "Twitter",
        :twitter_screen_name => "Twitter Screen Name",
        :name => "Name",
        :profile_image_url => "Profile Image Url"
      ),
      stub_model(User,
        :twitter_id => "Twitter",
        :twitter_screen_name => "Twitter Screen Name",
        :name => "Name",
        :profile_image_url => "Profile Image Url"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Twitter Screen Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Profile Image Url".to_s, :count => 2
  end
end
