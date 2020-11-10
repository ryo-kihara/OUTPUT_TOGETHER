class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :tweet, foreign_key: true, index: {unique: false}, on_delete: :cascade
      t.references :user, foreign_key: true, index: {unique: false}, on_delete: :cascade
      t.string :contents, :limit =>500, :null => false
      t.timestamps
      t.datetime :deleted_at
    end
  end
end
