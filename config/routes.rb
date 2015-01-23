Indie::Application.routes.draw do

  resources :games do
    resources :reviews, only: [:new, :create]
  end
  resources :users, only:[:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  root to: 'games#index'

end
