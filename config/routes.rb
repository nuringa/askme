Rails.application.routes.draw do
  get 'tags/show'
  root to: 'users#index'

  resources :users
  resource :session, only: [:new, :create, :destroy]
  resources :questions, except: [:show, :new, :index]
  resources :tags, only: [:show], param: :name
end
