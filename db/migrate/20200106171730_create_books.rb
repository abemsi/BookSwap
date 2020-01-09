class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string   :title
      t.string   :author
      t.text     :description
      t.string   :image
      t.text     :wishlist
      t.text     :rating
      t.string   :condition
      t.string   :location
      t.text     :publisher
      t.text     :pub_date
      t.text     :category

      t.timestamps null: false
    end
  end
end
