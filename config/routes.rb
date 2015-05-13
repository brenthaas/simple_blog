Rails.application.routes.draw do
  root to: 'posts#index'
  devise_for :users
  resources :posts
  get "about", to: "static_pages#about"
end
