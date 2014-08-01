Rails.application.routes.draw do

  resources :sessions
  resources :users
  resources :posts

  root 'static_pages#home'

  get '/about' => 'static_pages#about'

  get 'signup', to: 'users#new', as: 'signup'
  get 'signin', to: 'sessions#new', as: 'signin'
  get 'signout', to: 'sessions#destroy', as: 'signout'
end
