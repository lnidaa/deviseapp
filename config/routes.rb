Rails.application.routes.draw do

  # get 'users/index'
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'
  resources :posts
  devise_for :users, controllers: {
      registration: 'registration',
      confirmations: 'confirmations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
