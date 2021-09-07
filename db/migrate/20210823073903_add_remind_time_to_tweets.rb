class AddRemindTimeToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :remind_time, :time
  end
end
