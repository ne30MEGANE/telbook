class FriendsController < ApplicationController
  def index
	  @friends = Friend.order(:id).page(params[:page]).per(20)
	end

	def show #多分これつかってない
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
      redirect_to :root, notice: "友達を追加しました。"
    else
      render "new"
    end
	end

	def update
    @friend = Friend.find(params[:id])
    @friend.assign_attributes(params[:friend])
    if @friend.save
      redirect_to :root, notice: "友達の情報を更新しました。"
    else
      render "edit"
    end
	end

	def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy
    redirect_to :friends, notice: "友達を削除しました。"
	end
end
