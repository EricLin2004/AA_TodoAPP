class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end

	def new
		@project = Project.new
		@project.team_id = params[:team_id]
	end

	def create
		@project = Project.new(params[:project])
		if @project.save
			redirect_to project_url(@project)
		else
			flash.notice = @project.errors.full_messages
			render :new
		end
	end

	def show
		@project = Project.find(params[:id])
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])
		@project.update_attributes(params[:project])

		redirect_to project_url(@project)
	end
end
