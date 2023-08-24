class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def lending
    @books = Book.all
    # @books = Book.where(current_user.id: booking.user_id)
    @books = @books.select { |book| current_user.id == book.user_id }
  end

  def borrowing
    @bookings = Booking.all
    @bookings = @bookings.select { |booking| current_user.id == booking.user_id }
  end
end
