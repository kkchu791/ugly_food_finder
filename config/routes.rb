Rails.application.routes.draw do
  resources :markets
  root 'static_pages#index'
end
