Rails.application.routes.draw do
  resources :twos do
    post 'add'
    post 'subtract'
    post 'multiply'
  end
  root 'home#index'
end
