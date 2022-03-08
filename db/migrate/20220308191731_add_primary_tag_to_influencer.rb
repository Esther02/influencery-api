class AddPrimaryTagToInfluencer < ActiveRecord::Migration[6.0]
  def change
    add_column :influencers, :primary_tag, :string
  end
end
