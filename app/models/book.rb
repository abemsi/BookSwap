class Book < ActiveRecord::Base

  mount_uploader :image, ImageUploader
  belongs_to :genre
  belongs_to :user

  include PgSearch
  pg_search_scope :search, against: [:title, :author, :category],
    using: {
      tsearch: {
        prefix: true
      }
    }

end
