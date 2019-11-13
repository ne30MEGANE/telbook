class TelephonesController < ApplicationController
  def index
    if params[:friend_id].present?
      @friend = Friend.find(params[:friend_id])
    else
      @friend = Friend.find(session[:friendID])
    end
    session[:friendID] = @friend.id
    @telephones = @friend.telephones
    @telephone = Telephone.new()
  end

  def show
    redirect_to telephones_path
  end

  def new
  end

  def create
    @friend = Friend.find(session[:friendID])
    @telephone = Telephone.new(params[:telephone])
    @telephone.friend_id = @friend.id
    if @telephone.save
      redirect_to @telephone, notice: "電話番号を追加しました。"
    else
      render "index"
    end
  end

  def destroy
    @friend = Friend.find(session[:friendID])
    @telephone = @friend.telephones.find(params[:id])
    @telephone.destroy
    redirect_to :telephones, notice: "電話番号を削除しました。"
  end
end
