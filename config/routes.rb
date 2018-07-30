Rails.application.routes.draw do

  devise_scope :user do
    get 'users/sign_in', to: 'devise/sessions#new'
    get 'users/sign_up', to: 'devise/registrations#new'
    get 'users/edit', to: 'devise/registrations#edit'
  end

  get 'users/index'
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'
  resources :posts
  devise_for :users, controllers: {
      registration: 'registration',
      confirmations: 'confirmations'}
end
