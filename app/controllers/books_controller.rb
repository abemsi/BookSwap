class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  before_action :authorize_user, except: [:index, :show]

  # GET /books
  def index
    @books = Book.all.order(created_at: :desc)
  end

  # GET /books/:id
  def show
  end

  # GET /books/new
  def new
    @book = current_user.books.build
  end

  # GET /books/:id/edit
  def edit
  end

  # POST /books
  def create
    @book = current_user.books.build(book_params)

    if @book.save
      redirect_to @book, notice: 'Swap was successfully created.'
    else
      render :new
    end
  end

  def update
    @book.update(book_params)
    redirect_to @book, notice: 'Book was successfully updated!'
  end

  def destroy
    @book.destroy
    redirect_to [:books], notice: 'Book was successfully deleted!'
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

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
