class BooksController < ApplicationController
  def index
    @books = Book.all.order(created_at: :desc)
  end

  def show
    @book = Book.find (params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book
    else
      render :new
    end
  end

  def destroy
    @book = Book.find params[:id]
    @book.destroy
    redirect_to [:books], notice: 'Book deleted!'
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(
      :title,
      :author,
      :image,
      :condition,
      :description,
      :wishlist,
      :location,
      :genre_id
    )
  end

end