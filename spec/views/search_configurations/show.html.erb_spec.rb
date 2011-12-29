require 'spec_helper'

describe "search_configurations/show.html.erb" do
  before(:each) do
    @search_configuration = assign(:search_configuration, stub_model(SearchConfiguration,
      :twitter_handle => "Twitter Handle",
      :twitter_search_string => "Twitter Search String",
      :twitter_consumer_key => "Twitter Consumer Key",
      :twitter_consumer_secret => "Twitter Consumer Secret",
      :twitter_token => "Twitter Token",
      :twitter_secret => "Twitter Secret"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Twitter Handle/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Twitter Search String/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Twitter Consumer Key/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Twitter Consumer Secret/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Twitter Token/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Twitter Secret/)
  end
end
