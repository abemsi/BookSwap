class GenresController < ApplicationController

  def show
    @genre = Genre.find(params[:id])
    @books = @genre.books.order(created_at: :desc)
  end
  
end
