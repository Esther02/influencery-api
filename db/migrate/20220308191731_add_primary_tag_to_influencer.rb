class AddPrimaryTagToInfluencer < ActiveRecord::Migration[6.0]
  def change
    add_reference :influencers, :primary_tag, null: false
    add_foreign_key :influencers, :tags, column: :primary_tag_id, primary_key: :id
  end
end
