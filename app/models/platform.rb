class Platform < ApplicationRecord
  has_many :influencers

  validates :name, presence: true
  validates :url, format: { with: /https?:\/\/[\S]+/ }
end
