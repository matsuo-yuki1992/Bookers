class BooksController < ApplicationController

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @books = Book.find(params[:id])
  end

  def index
    @book = Book.new
    @lists = Book.all

  end
  
  def create
  @book = Book.new(book_params)
  if @book.save
    flash[:notice] ="Book was successfully created."
    redirect_to book_path(@book.id)
  else
    @lists = Book.all
    render :index
  end
  end

def destroy
  book = Book.find(params[:id])
  book.destroy
    redirect_to books_path
end

def update
  @books = Book.find(params[:id])
  if @books.update(book_params)
  flash[:notice] ="Book was successfully updated."
  redirect_to book_path(@books.id)
  else
  render :edit
  end
end
private

  def book_params
    params.require(:book).permit(:title, :body,)
  end
  
end