class Tweet < ApplicationRecord
  # likes
  has_many :likes, dependent: :destroy
  has_many :fav_users, through: :likes, source: :user
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }


  # 現在のユーザーがいいねしてたらtrueを返す
  def fav?(user)
    fav_users.include?(user)
  end
end
