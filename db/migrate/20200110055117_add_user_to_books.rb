class AddUserToBooks < ActiveRecord::Migration
  def change
    add_reference :books, :user, index: true, foreign_key: true
  end
end
