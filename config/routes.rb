Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users,
    controllers: {
      sessions:  'public/users/sessions'
    }

  devise_scope :user do
    root 'public/users/sessions#new'
  end

  scope module: 'public' do
  end

  namespace :admin do
    root to: 'root#show'
    resources :stores
    resources :books
  end

end
