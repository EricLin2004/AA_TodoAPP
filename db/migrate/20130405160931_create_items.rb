class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :descript
      t.integer :completed

      t.timestamps
    end
  end
end
