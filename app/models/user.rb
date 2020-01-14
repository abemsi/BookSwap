class User < ActiveRecord::Base
  has_secure_password
  has_many :books

  validates :name, :email, :password_digest, presence: true
  validates :email, uniqueness: true, case_sensitive: false
  validates :password, length: { minimum: 6 }
end
