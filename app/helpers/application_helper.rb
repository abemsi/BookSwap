module ApplicationHelper

  def book_author(book)
    current_user && current_user.id == book.user_id
  end

end
