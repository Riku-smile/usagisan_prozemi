class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :tweet_id

      t.timestamps

      t.index :user_id
      t.index :tweet_id
      t.index [:user_id, :tweet_id], unique: true
    end
  end
end
