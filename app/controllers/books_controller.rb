class BooksController < ApplicationController
  def index
  end

  def show
    @book = Book.find(params[:id])
  end
end
# hola this is testing branch
