class RemoveRemindTimeFromTweets < ActiveRecord::Migration[5.2]
  def change
    remove_column :tweets, :remind_time, :time
  end
end
