Rails.application.routes.draw do

  root 'users#index'
  get 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'
  post 'login', to: 'sessions#create'
  resources :users
end
