class BookingsController < ApplicationController
  before_action :set_castle, only: [:index, :new, :create, :show]
  before_action :set_booking, except: [:index, :new, :create]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
#    @user = User.find(params[:user_id])
    @booking.castle = @castle
    @booking.user = current_user
    if @booking.save
      redirect_to castle_booking_path(@castle, @booking)
    else
      render :new
    end
    authorize @booking
  end

  def edit
    authorize @booking
  end

  def update
    @booking.available = false
    @booking.save
    redirect_to root_path
    authorize @booking
  end

  def show
    authorize @booking
  end

  def destroy
    @booking.destroy
    redirect_to root_path, notice: 'Booking successfully destroyed.'
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :castle_id)
  end

  def set_castle
    @castle = Castle.find(params[:castle_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
