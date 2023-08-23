class BookingsController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def create
    @booking = Booking.new(booking_params)
    @booking.book = Book.find(params[:book_id])
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to book_path(@booking.book)
    else
      render "books/show", status: :unprocessable_entity
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
