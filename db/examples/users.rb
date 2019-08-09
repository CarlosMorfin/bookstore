User.create(
  username:              'Administrator',
  password:              'bookstores',
  password_confirmation: 'bookstores',
  roles:                 [Role.find_by(code: :franchisor)]
)

