class RemoveRemindDateFromTweets < ActiveRecord::Migration[5.2]
  def change
    remove_column :tweets, :remind_date, :date
  end
end
