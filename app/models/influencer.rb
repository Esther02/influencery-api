class Influencer < ApplicationRecord
  belongs_to :platform
  has_many :tags, through: :influencer_tags

  validates :profile_pic_url, format: { with: /https?:\/\/[\S]+/ }
  validates :followers, presence: true, numericality: { only_integer: true }
end
