class ItemsController < ApplicationController
	def index
		if params[:project_id]
			@items = Item.where(:project_id => params[:project_id])
		else
			@items = Item.all
		end
	end

	def new
		@item = Item.new
		@item.project_id = params[:project_id]
	end

	def create
		@item = Item.new(params[:item])
		if @item.save
			redirect_to item_url(@item)
		else
			flash.notice = @item.errors.full_messages
			render :new
		end
	end

	def show
		@item = Item.find(params[:id])
	end

	def edit
		@item = Item.find(params[:id])
	end

	def update
		@item = Item.find(params[:id])
		@item.update_attributes(params[:item])

		redirect_to item_url(@item)
	end

	def batch_update
		update_hash = params.select {|key,value| key.to_i != 0}
		update_hash.each do |key, value|
			item = Item.find(key.to_i)
			if value == "on"
				item.completed = 1
				puts key
			else
				item.completed = 0
			end
			item.save
		end

		redirect_to project_items_url(params[:project_id])
	end
end
