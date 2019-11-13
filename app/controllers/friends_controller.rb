class FriendsController < ApplicationController
  def index
	  @friends = Friend.order(:id).page(params[:page]).per(20)
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
    @friend = Friend.new(params[:friend])
    if @friend.save
      redirect_to @friend, notice: "友達を追加しました。"
    else
      render "new"
    end
	end

	def update
	end

	def destroy
	end
end
