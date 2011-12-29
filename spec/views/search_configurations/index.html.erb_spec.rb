require 'spec_helper'

describe "search_configurations/index.html.erb" do
  before(:each) do
    assign(:search_configurations, [
      stub_model(SearchConfiguration,
        :twitter_handle => "Twitter Handle",
        :twitter_search_string => "Twitter Search String",
        :twitter_consumer_key => "Twitter Consumer Key",
        :twitter_consumer_secret => "Twitter Consumer Secret",
        :twitter_token => "Twitter Token",
        :twitter_secret => "Twitter Secret"
      ),
      stub_model(SearchConfiguration,
        :twitter_handle => "Twitter Handle",
        :twitter_search_string => "Twitter Search String",
        :twitter_consumer_key => "Twitter Consumer Key",
        :twitter_consumer_secret => "Twitter Consumer Secret",
        :twitter_token => "Twitter Token",
        :twitter_secret => "Twitter Secret"
      )
    ])
  end

  it "renders a list of search_configurations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Twitter Handle".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Twitter Search String".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Twitter Consumer Key".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Twitter Consumer Secret".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Twitter Token".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Twitter Secret".to_s, :count => 2
  end
end
