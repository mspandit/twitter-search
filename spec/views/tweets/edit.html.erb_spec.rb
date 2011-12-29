require 'spec_helper'

describe "tweets/edit.html.erb" do
  before(:each) do
    @tweet = assign(:tweet, stub_model(Tweet,
      :tweet_id => "MyString",
      :content => "MyText",
      :user_id => 1
    ))
  end

  it "renders the edit tweet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tweets_path(@tweet), :method => "post" do
      assert_select "input#tweet_tweet_id", :name => "tweet[tweet_id]"
      assert_select "textarea#tweet_content", :name => "tweet[content]"
      assert_select "input#tweet_user_id", :name => "tweet[user_id]"
    end
  end
end
