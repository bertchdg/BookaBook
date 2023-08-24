class BookingsController < ApplicationController
  before_action :set_book, only: [:show, :update, :destroy, :create]

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.book = Book.find(params[:book_id])
    @booking.user_id = current_user.id
    borrow_date = DateTime.strptime(params[:booking][:borrow_from], '%Y-%m-%d')
    @bookings = @book.bookings.where("return_on > ?", borrow_date)
    if !@bookings.empty?
      flash.alert = "This book is unavailable for your selected dates. Please try again."
      render "books/show", status: :unprocessable_entity
    else
      if @booking.save
        flash.notice = "Your booking request was successful!"
        redirect_to borrowing_path
      else
        render "books/show", status: :unprocessable_entity
      end
    end
  end



  private

  def set_book
    @book = Book.find(params[:book_id])
  end

  def booking_params
    params.require(:booking).permit(:borrow_from, :return_on, :book_id)
  end
end
