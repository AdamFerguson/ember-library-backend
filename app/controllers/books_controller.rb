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
    @book = Book.create(params[:book])
    respond_with @book
  end

  def update
    @book = Book.find(params[:id])
    @book.update_attributes(params[:book])
    respond_with @book
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    respond_with @book
  end
end