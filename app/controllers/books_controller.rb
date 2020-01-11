class BooksController < ApplicationController
  
  before_filter :login_required, :except => [:index, :show, :destroy, :edit]
  
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
      :book_condition,
      :description,
      :category,
      :wishlist,
      :rating,
      :location,
      :publisher,
      :pub_date,
      :genre_id,
      :cover
    )
  end

end
