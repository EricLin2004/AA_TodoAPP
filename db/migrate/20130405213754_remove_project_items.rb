class RemoveProjectItems < ActiveRecord::Migration
  def change
  	drop_table :project_items
  end
end
