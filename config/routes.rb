Rails.application.routes.draw do
  root "pages#home"

  resources :likes, only: [:create, :destroy]
  resources :comments, only: [:create, :destroy, :edit, :update]
  resources :posts, only: [:index, :show, :create, :destroy, :edit, :update]
  resources :follows, only: [:create, :destroy]

  get "/profile/:id", to: "users#show", as: "user"
  get '/profile/:id/followings', to: "users#followings", as: "followings"
  get '/profile/:id/followers', to: "users#followrs", as: "followers"
  post "/users/search", to: "users#search", as: "search"


  devise_for :users, :controllers => {registrations: 'registrations'}
end
