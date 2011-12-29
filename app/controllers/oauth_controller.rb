class OauthController < ApplicationController
  def callback
    access_token = client.authorize(
      request_token.token, 
      request_token.secret, 
      :oauth_verifier => params[:oauth_verifier]
    )
    if client.authorized?
      redirect_to SearchConfiguration.first, notice: "Successful authorization."
    else
      redirect_to SearchConfiguration.first, notice: "Unsuccessful authorization."
    end
  end
end
