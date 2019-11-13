class FriendsController < ApplicationController
  def index
	  @friends = Friend.order(:id)
	end

	def show
	  @friend = Friend.find(params[:id])
		@telephones = @friend.telephones
	end

	def new
    @friend = Friend.new()
	end

	def edit
    @friend = Friend.find(params[:id])
	end

	def create
	end

	def update
	end

	def destroy
	end
end
