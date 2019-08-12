class BookStore < ApplicationRecord

  belongs_to :store

  belongs_to :book

  validates :book_count,
    presence: true
end
