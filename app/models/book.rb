class Book < ActiveRecord::Base

  mount_uploader :image, ImageUploader
  belongs_to :genre
  belongs_to :user

end
