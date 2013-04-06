class AddforeignIDs < ActiveRecord::Migration
  def change
  	add_column :projects, :item_ids, :integer
  	add_column :items, :project_id, :integer
  end
end
