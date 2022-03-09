class Influencer < ApplicationRecord
  belongs_to :platform
  belongs_to :primary_tag, class_name: 'Tag'
  has_many :influencer_tags
  has_many :tags, through: :influencer_tags

  validates :profile_pic_url, format: { with: /https?:\/\/[\S]+/ }
  validates :followers, presence: true, numericality: { only_integer: true }
end
