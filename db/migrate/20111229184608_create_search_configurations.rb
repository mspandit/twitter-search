class CreateSearchConfigurations < ActiveRecord::Migration
  def change
    create_table :search_configurations do |t|
      t.string :twitter_handle
      t.string :twitter_search_string
      t.string :twitter_consumer_key
      t.string :twitter_consumer_secret
      t.string :twitter_token
      t.string :twitter_secret

      t.timestamps
    end
  end
end
