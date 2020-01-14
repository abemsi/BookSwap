class AddBookToConversation < ActiveRecord::Migration
  def change
    add_column :conversations, :book_id, :integer
    add_foreign_key :conversations, :books
    remove_column :conversations, :recipient_id, :integer
  end
end
