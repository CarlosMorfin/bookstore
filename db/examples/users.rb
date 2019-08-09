User.create(
  username:              'admin',
  password:              'administrador',
  password_confirmation: 'administrador',
  roles:                 [Role.find_by(code: :franchisor)]
)

