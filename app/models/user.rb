class User < ApplicationRecord
  has_secure_password
  acts_as_paranoid

  has_many :tweets
  has_many :comments
  has_many :likes
  has_many :favorites, through: :tweets, source: :likes
end
