class BookingsController < ApplicationController
  def index
    if user_signed_in?
      @bookings = Booking.where(user_id: current_user.id)
    else
      @bookings = nil
    end
  end

  def new
    @booking = Booking.new
  end

  def create
    booking = Booking.new(booking_params)
    friend = Friend.find(params[:friend_id])

    booking.friend = friend
    booking.user = current_user

    if booking.save!
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
