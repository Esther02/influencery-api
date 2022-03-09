class Platform < ApplicationRecord
  has_many :influencers

  validates :name, presence: true
  validates :base_url, format: { with: /https?:\/\/[\S]+/ }
end
