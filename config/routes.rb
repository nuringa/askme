Rails.application.routes.draw do
  get 'tags/show'
  root to: 'users#index'

  get 'sign_up' => 'users#new'
  get 'log_out' => 'sessions#destroy'
  get 'log_in' => 'sessions#new'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :questions, except: [:show, :new, :index]
  resources :tags, only: [:show], param: :name
end
