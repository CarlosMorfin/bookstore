class User < ApplicationRecord

  validates :full_name,
    presence: true,
    length:   { maximum: 255 }

  validates :email,
    presence:   true,
    uniqueness: true

end
