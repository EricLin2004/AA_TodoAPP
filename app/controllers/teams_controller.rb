class TeamsController < ApplicationController
	def index
		@teams = Team.all
	end

	def new
		@team = Team.new
	end

	def create
		@team = Team.new(params[:team])
		if @team.save
			redirect_to team_url(@team)
		else
			flash.notice = @team.errors.full_messages
			render :new
		end
	end

	def show
		@team = Team.find(params[:id])
	end

	def edit
		@team = Team.find(params[:id])
	end

	def update
		@team = Team.find(params[:id])
		@team.update_attributes(params[:team])

		redirect_to team_url(@team)
	end
end
