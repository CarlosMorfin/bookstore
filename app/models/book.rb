class Book < ApplicationRecord

  validates :title,
    presence:   true,
    uniqueness: true,
    length:     { maximum: 128 }

  validates :author,
    presence: true,
    length:   { maximum: 128 }

  validates :year,
    numericality: true,
    allow_nil:    true

end
