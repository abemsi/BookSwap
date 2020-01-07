class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.string :image
      t.text :wishlist
      t.string :condition
      t.string :location

      t.timestamps null: false
    end
  end
end
