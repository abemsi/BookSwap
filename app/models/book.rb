class Book < ActiveRecord::Base

  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :conversations

  include PgSearch
  pg_search_scope :search, against: [:title, :author, :category],
    using: {
      tsearch: {
        prefix: true
      }
    }

end
