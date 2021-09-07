class AddRemindDateToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :remind_date, :date
  end
end
