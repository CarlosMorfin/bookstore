class StoredBook < ApplicationRecord

  belongs_to :store

  belongs_to :book

  delegate :title,
    :author,
    :age,
    :year,
    to: :book

  validates :book_id,
    presence: true

  validates :book_count,
    presence: true
end
