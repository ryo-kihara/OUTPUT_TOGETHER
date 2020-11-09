class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|

      t.integer :user_id, :null => false, index :{unique: true}
      t.string :contents, :limit => 140, :null => false
      t.timestamps
      t.datetime :deleted_at, default => null
    
    end
  end
end
