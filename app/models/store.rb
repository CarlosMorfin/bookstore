class Store < ApplicationRecord

  has_many :store_books,
    class_name: :BookStore

  has_many :books, through: :store_books

  validates :codename,
    presence:   true,
    uniqueness: true,
    length:     { maximum: 32 }

  validates :address,
    presence: true,
    length:   { maximum: 128 }

  validates :phone,
    length: { maximum: 64 }

end

