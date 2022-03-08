class Tag < ApplicationRecord
    has_many :influencer_tags

    validates :name, presence: true
end
