class OauthController < ApplicationController
  def callback
    if params[:denied]
      redirect_to search_configurations_path
    else
      access_token = client.authorize(
        request_token.token, 
        request_token.secret, 
        :oauth_verifier => params[:oauth_verifier]
      )
      if SearchConfiguration.first.update_attributes({ twitter_token: access_token.token, twitter_secret: access_token.secret }) && client.authorized?
        session[:request_token] = nil
        redirect_to SearchConfiguration.first, notice: "Successful authorization."
      else
        redirect_to SearchConfiguration.first, notice: "Unsuccessful authorization."
      end
    end
  end
end
