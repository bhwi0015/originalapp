Rails.application.routes.draw do
  devise_for :users
  resources :users do
    get :followings, on: :member
    get :followers, on: :member
  end
  resources :relationships, only: [:create, :destroy]

  root to: 'homes#index'
  resources :homes, only: :index
  resources :posts do
  resources :comments, only: [:index, :create, :destroy]
  resource :likes, only: [:create, :destroy]
 end
end
