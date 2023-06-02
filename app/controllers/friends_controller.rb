class FriendsController < ApplicationController
skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @friends = Friend.all
     # The `geocoded` scope filters only friends with coordinates
    @markers = @friends.geocoded.map do |friend|
      {
        lat: friend.latitude,
        lng: friend.longitude,
        # image_url: friend.photo
        image_url: url_for(friend.photo)
        # Rails.application.routes.url_helpers.asset_url("Alek.jpeg")
      }
    end
  end

  def show
    @friend = Friend.find(params[:id])
    @marker =
      [{
        lat: @friend.latitude,
        lng: @friend.longitude,
        image_url: ActionController::Base.helpers.asset_url('Marker')
      }]
  end

  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new(friend_params)
    @friend.user = current_user
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
    params.require(:friend).permit(:location, :price, :name, :age, :gender, :language, :photo, :description)
  end
end
