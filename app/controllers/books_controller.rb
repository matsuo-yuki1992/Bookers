class BooksController < ApplicationController
  def new
    @book = List.new
  end

  def show
  end

  def edit
  end

  def index
  end
  
  def create
    book = List.new(list_params)
    if book.save
      redirect_to book_path(@book.id)
    else
      render :index
    end
  end


private

  def list_params
    params.require(:list).permit(:title, :body,)
  end
  
end