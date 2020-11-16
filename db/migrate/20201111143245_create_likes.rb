class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes, id: false do |t|
      t.references :tweet, foreign_key: { on_delete: :cascade }, null: false
      t.references :user, foreign_key: { on_delete: :cascade }, null: false
      t.datetime :created_at, null: false
    end
    add_index :likes, [:tweet_id, :user_id], unique: true
  end
end
