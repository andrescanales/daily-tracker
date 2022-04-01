Rails.application.routes.draw do
  resources :projects, only: [:index, :new, :create]
  resources :clients, only: [:index, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
