Ribbitapp::Application.routes.draw do
  resources :ribbits
  resources :relationships

  resources :sessions
  resources :users

  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'buddies', to: 'users#buddies', as: 'buddies'

  root to: 'users#new'

end
