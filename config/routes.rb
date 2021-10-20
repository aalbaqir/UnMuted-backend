Rails.application.routes.draw do
  resources :profiles, only: [:show, :index]
  resources :news_articles, only: [:show]
  resources :comments, only: [:show, :create, :destroy, :update]
  resources :users, only: [:show, :create, :destroy, :update, :index]
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/me", to: "users#show"
  get "/profile", to: "profiles#index"
  patch "/profileupdate", to: "users#update"
  post "/enter", to: "comments#create"

  # get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end