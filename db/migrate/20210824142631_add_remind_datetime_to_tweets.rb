class AddRemindDatetimeToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :remind_datetime, :datetime
  end
end
