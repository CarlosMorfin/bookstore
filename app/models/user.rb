class User < ApplicationRecord

  devise :database_authenticatable,
         :timeoutable

  validates :username,
    uniqueness: true,
    presence:   true,
    length:     { maximum: 255 }

  validates :full_name,
    presence: true,
    length:   { maximum: 255 }

  validates :email,
    presence:   true,
    uniqueness: true

end
