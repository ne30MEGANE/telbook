class TelephonesController < ApplicationController
  def index
    @friend = Friend.find(params[:friend_id])
    @telephones = @friend.telephones
  end

  def show
  end

  def new
  end
end
