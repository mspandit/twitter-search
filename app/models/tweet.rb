class Tweet < ActiveRecord::Base
  belongs_to :user
  
  def self.import
    unless SearchConfiguration.first.twitter_search_string.blank?
      page = 1
      begin
        mentions = (TwitterOAuth::Client.new(
          :consumer_key => TWITTER_CONSUMER_KEY, 
          :consumer_secret => TWITTER_CONSUMER_SECRET, 
          :token => SearchConfiguration.first.twitter_token, 
          :secret => SearchConfiguration.first.twitter_secret
        ).mentions(count: TWITTER_MENTIONS_PER_PAGE, page: page))
        mentions.each do |mention| 
          unless (Tweet.find_by_tweet_id(mention["id"].to_s) || mention["text"].index(SearchConfiguration.first.twitter_search_string).nil?)
            user = User.find_or_initialize_by_twitter_id(mention["user"]["id"])
            user.twitter_screen_name = mention["user"]["screen_name"]
            user.name = mention["user"]["name"]
            user.profile_image_url = mention["user"]["profile_image_url"]
            user.save
            Tweet.create(
              tweet_id: mention["id"],
              content: mention["text"],
              user_id: user.id,
              created_at: mention["created_at"]
            )
          end
        end
        page = page + 1
      end until mentions.empty?
      Tweet.delay(run_at: 1.hour.from_now).import
    end
  end

end
