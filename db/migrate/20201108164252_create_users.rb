class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, :limit => 30, :null => false
      t.string :avatar
      t.string :email, :limit => 100, index: {unique: true}
      t.string :password_digest
      t.string :google_user_id, :limit => 50, index: {unique: true}
      t.string :twitter_user_id, :limit => 50, index: {unique: true}
      t.timestamps
      t.datetime :deleted_at
    end
  end
end
