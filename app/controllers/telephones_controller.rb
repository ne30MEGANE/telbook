class TelephonesController < ApplicationController
  def index
    if params[:friend_id].present?
      @friend = Friend.find(params[:friend_id])
      logger.debug("idあった")
    else
      @friend = Friend.find(session[:friendID])
      logger.debug("idなかった")
    end
    session[:friendID] = @friend.id
    @telephones = @friend.telephones
    @telephone = Telephone.new()
  end

  def show 
  end

  def new
  end

  def create
    @friend = Friend.find(session[:friendID])
    @telephones = @friend.telephones
    @telephone = Telephone.new(params[:telephone])
    @telephone.friend_id = @friend.id
    if @telephone.save
      redirect_to [@friend, :telephones], notice: "電話番号を追加しました。"
    else
      render "index"
    end
  end

  def destroy
    @friend = Friend.find(session[:friendID])
    @telephone = @friend.telephones.find(params[:id])
    @telephone.destroy
    redirect_to [@friend, :telephones], notice: "電話番号を削除しました。"
  end
end
