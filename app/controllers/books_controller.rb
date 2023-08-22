class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  def index
  end

  def show
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
end

private

def set_book
  @book = Book.find(params[:id])
end

def book_params
  params.require(:book).permit(:title, :author, :genre)
end
