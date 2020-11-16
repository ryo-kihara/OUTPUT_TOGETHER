class CreateTweetHashtags < ActiveRecord::Migration[6.0]
  def change
    create_table :tweet_hashtags, id: false do |t|

      t.references :tweet, foreign_key: {on_delete: :cascade}, null: false
      t.references :hashtag, foreign_key: {on_delete: :cascade}, null: false
    end
    add_index :tweet_hashtags, [:tweet_id, :hashtag_id], unique: true
  end
end
