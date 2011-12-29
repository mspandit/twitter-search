class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :tweet_id
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
