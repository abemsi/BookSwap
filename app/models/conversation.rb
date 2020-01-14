class Conversation < ActiveRecord::Base
  belongs_to :sender, foreign_key: :sender_id, class_name: "User"
  belongs_to :book, foreign_key: :book_id, class_name: "Book"


  has_many :messages

  validates_uniqueness_of :sender_id, scope: :book_id
  validates :sender_id, :book_id, presence: true

  scope :between, -> (sender_id, book_id) do
    where("(conversations.sender_id = ? AND conversations.book_id = ?) OR (conversations.sender_id = ? AND conversations.book_id = ?)", sender_id, book_id, book_id, sender_id)
  end

end
