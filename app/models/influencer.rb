class Influencer < ApplicationRecord
  belongs_to :platform
  has_many :influencer_tags
  has_many :tags, through: :influencer_tags
  has_one :primary_tag

  validates :profile_pic_url, format: { with: /https?:\/\/[\S]+/ }
  validates :followers, presence: true, numericality: { only_integer: true }
end
