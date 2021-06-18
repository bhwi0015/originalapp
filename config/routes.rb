Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'
  resources :homes, only: :index
  resources :posts do
  resources :comments, only: [:index, :create, :destroy]
 end
end
