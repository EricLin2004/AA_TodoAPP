class CreateProjectItems < ActiveRecord::Migration
  def change
    create_table :project_items do |t|
    	t.integer :project_id
    	t.integer :item_id
    	
      t.timestamps
    end
  end
end
