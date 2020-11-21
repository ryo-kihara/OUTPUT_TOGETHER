class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :tweet, foreign_key: { on_delete: :cascade }, null: false, index: { unique: false }
      t.references :user, foreign_key: { on_delete: :cascade }, null: false, index: { unique: false }
      t.string :contents, limit: 500, null: false
      t.timestamps
      t.datetime :deleted_at
    end
  end
end
