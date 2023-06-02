class FriendsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      if is_number?(params[:query])
        age = params[:query].to_i
        @friends = Friend.find_by_sql(
          "SELECT *
          FROM friends
          ORDER BY ABS(age - #{age}) ASC"
        )
      else
        @friends = Friend.search_text_fields(params[:query])
      end
    else
      @friends = Friend.all
    end

    unless @friends.nil?
      @markers = @friends.map do |friend|
        {
          lat: friend.latitude,
          lng: friend.longitude,
          image_url: url_for(friend.photo)
        }
      end
    end
  end

  def show
    @friend = Friend.find(params[:id])
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

  def is_number? string
    true if Integer(string) rescue false
  end
end
