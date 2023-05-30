class FriendsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @friends = Friend.all
  end

  def show
    @friend = Friend.find(params[:id])
  end
end
