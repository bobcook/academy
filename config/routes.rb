Rails.application.routes.draw do
  resources :twos
  root 'home#index'
end
