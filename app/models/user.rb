class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :timeoutable

  has_and_belongs_to_many :roles

  validates :username,
    uniqueness: true,
    presence:   true,
    length:     { maximum: 255 }

 validates :password,
    confirmation: true,
    length:       { in: 6..16 },
    if:           proc { |user| user.password.present? }

  validates :password,
    presence: true,
    on:       :create

  validates :password_confirmation,
    presence: true,
    if:       proc { |user| user.password.present? }

end
