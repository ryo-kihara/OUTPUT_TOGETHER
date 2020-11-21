class CreateHashtagsTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :hashtags_tweets, id: false do |t|

      t.references :tweet, foreign_key: {on_delete: :cascade}, null: false
      t.references :hashtag, foreign_key: {on_delete: :cascade}, null: false
    end
    add_index :hashtags_tweets, [:tweet_id, :hashtag_id], unique: true
  end
end
