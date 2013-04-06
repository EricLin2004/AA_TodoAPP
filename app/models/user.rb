class User < ActiveRecord::Base
	validates :name, :presence => true
  attr_accessible :name, :team_ids
  has_many :team_memberships
  has_many :teams, :through => :team_memberships
end
