Rails.application.routes.draw do
  resources :activities, only: [:index, :new, :create, :edit, :update] do
    get "index", on: :collection, action: :index
  end
  resources :scores, only: [:index, :new, :create]
  devise_for :users
  root to: 'home#index'
  get "home/users"
  resources :projects, only: [:index, :new, :create]
  resources :clients, only: [:index, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
