class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|

      t.references :user, foreign_key: true, index: {unique: false}
      t.string :contents, :limit => 140, :null => false
      t.timestamps
      t.datetime :deleted_at
    
    end
  end
end
