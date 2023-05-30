class FriendsController < ApplicationController
  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new(friend_params)
    @friend.user = current_user
    current_user = nil
    if @friend.save
      redirect_to friend_path(@friend)
    else
      render :new, status: :unprocessable_entity
    end
  end

    def destroy
      @friend = Friend.find(params[:id])
      @friend.destroy
      redirect_to friends_path
    end
  

  private
  def friend_params
    params.require(:friend).permit(:location, :price, :name, :age, :gender, :language)
  end

end
