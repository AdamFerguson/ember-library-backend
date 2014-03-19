class BooksController < ApplicationController
  respond_to :json

  def index
    @books = Book.all
    respond_with @books
  end

  def show
    @book = Book.find(params[:id])
    respond_with @book
  end

  def create
    @book = Book.create(book_params)
    respond_with @book
  end

  def update
    @book = Book.find(params[:id])
    @book.update_attributes(book_params)
    respond_with @book
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    respond_with @book
  end

  private

  def book_params
    params.require(:book).permit!
  end
end