class InfluencerSerializer < ActiveModel::Serializer
  attributes :id, :handle, :platform, :followers, :profile_pic_url, :tags
  has_many :influencer_tags, through :tags
end
