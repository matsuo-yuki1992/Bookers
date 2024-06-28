class BooksController < ApplicationController

  def show
    @book = List.find(params[:id])
  end

  def edit
    @books = List.find(params[:id])
  end

  def index
    @book = List.new
    @lists = List.all

  end
  
  def create
  book = List.new(list_params)
  if book.save
    redirect_to book_path(book.id)
  else
    render :index
  end
  end

def destroy
  book = List.find(params[:id])
  book.destroy
    redirect_to books_path
end

def update
  book = List.find(params[:id])
  book.update(list_params)
  redirect_to book_path(book.id)
end
private

  def list_params
    params.require(:list).permit(:title, :body,)
  end
  
end