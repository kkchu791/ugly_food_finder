Rails.application.routes.draw do
  root 'static_pages#index'
  get 'sign_up', to: 'users#new'
  get 'log_in', to: 'sessions#new'
  post "log_in", to: "sessions#create"
  get 'log_out', to: 'sessions#destroy'
  resources :users
  resources :sessions
  resources :markets
end
