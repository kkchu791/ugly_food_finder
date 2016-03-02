Rails.application.routes.draw do
  resources :markets
  root 'markets#index'
end
