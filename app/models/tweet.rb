class Tweet < ApplicationRecord
  # likes
  has_many :likes, dependent: :destroy
  has_many :fav_users, through: :likes, source: :user
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }

  # いいねする
  def fav(user)
    likes.create(user_id: user.id)
  end

  # いいねを取り消す
  def unfav(user)
    likes.find_by(user_id: user.id).destroy
  end

  # 現在のユーザーがいいねしてたらtrueを返す
  def fav?(user)
    fav_users.include?(user)
  end
end
