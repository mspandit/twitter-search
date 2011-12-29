require 'spec_helper'

describe "search_configurations/new.html.erb" do
  before(:each) do
    assign(:search_configuration, stub_model(SearchConfiguration,
      :twitter_handle => "MyString",
      :twitter_search_string => "MyString",
      :twitter_consumer_key => "MyString",
      :twitter_consumer_secret => "MyString",
      :twitter_token => "MyString",
      :twitter_secret => "MyString"
    ).as_new_record)
  end

  it "renders new search_configuration form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => search_configurations_path, :method => "post" do
      assert_select "input#search_configuration_twitter_handle", :name => "search_configuration[twitter_handle]"
      assert_select "input#search_configuration_twitter_search_string", :name => "search_configuration[twitter_search_string]"
      assert_select "input#search_configuration_twitter_consumer_key", :name => "search_configuration[twitter_consumer_key]"
      assert_select "input#search_configuration_twitter_consumer_secret", :name => "search_configuration[twitter_consumer_secret]"
      assert_select "input#search_configuration_twitter_token", :name => "search_configuration[twitter_token]"
      assert_select "input#search_configuration_twitter_secret", :name => "search_configuration[twitter_secret]"
    end
  end
end
