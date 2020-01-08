class PagesController < ApplicationController
  
  def home
  end

  def search
    if params[:term]
      @books = Book.search(params[:term])
    else
      @books = Book.all.order(created_at: :desc)
    end
  end
end