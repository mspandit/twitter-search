class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def client
    @client ||= TwitterOAuth::Client.new(:consumer_key => TWITTER_CONSUMER_KEY, :consumer_secret => TWITTER_CONSUMER_SECRET)
  end
  
  def request_token
    @request_token ||= client.request_token(oauth_callback: oauth_callback_url)
  end
end
