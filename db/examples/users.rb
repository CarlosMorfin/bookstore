User.create(
  username:              'Administrador',
  password:              'stores',
  password_confirmation: 'stores',
  roles:                 [Role.find_by(code: :franchisor)]
)
