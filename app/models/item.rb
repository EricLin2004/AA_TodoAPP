class Item < ActiveRecord::Base
	validates :title, :presence => true
  attr_accessible :completed, :descript, :title, :project_id
  belongs_to :project
end
