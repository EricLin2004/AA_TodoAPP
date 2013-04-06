class Team < ActiveRecord::Base
	validates :name, :presence => true
  attr_accessible :name, :project_id
  has_many :projects
  has_many :team_memberships
  has_many :users, :through => :team_memberships
end
