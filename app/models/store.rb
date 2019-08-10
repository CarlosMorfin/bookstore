class Store < ApplicationRecord

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

