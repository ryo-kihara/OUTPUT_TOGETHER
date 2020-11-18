class Tweet < ApplicationRecord
  acts_as_paranoid
  
  belongs_to :user
  has_many :likes
  has_many :comments
  has_and_belongs_to_many :hashtags
end
