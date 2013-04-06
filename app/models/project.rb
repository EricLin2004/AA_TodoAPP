class Project < ActiveRecord::Base
	validates :title, :presence => true
  attr_accessible :descript, :title, :item_ids, :team_id
  has_many :items
  belongs_to :team
end
