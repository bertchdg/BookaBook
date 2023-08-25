class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  def index
    @books = Book.all
    if params[:query].present?
      sql_subquery = "title ILIKE :query OR Synopsis ILIKE :query OR author ILIKE :query OR genre ILIKE :query"
      @books = @books.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def show
    # The `geocoded` scope filters only books with coordinates
    @markers = [{ lat: @book.latitude, lng: @book.longitude }]
    @booking = Booking.new
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    if @book.save
      redirect_to book_path(@book)
    else
      render "books", status: :unprocessable_entity
    end
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:id].to_i)
    @book.update(book_params)
    redirect_to lending_path(@book)
  end
    
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to lending_path, status: :see_other
    flash.notice = 'Book was successfully deleted.'
  end

end

private

def set_book
  @book = Book.find(params[:id])
end

def book_params
  params.require(:book).permit(:title, :author, :genre)
end


