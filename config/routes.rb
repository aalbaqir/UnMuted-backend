Rails.application.routes.draw do
  resources :likes
  resources :dislikes
  resources :loves
  resources :sads
  resources :reactions
  resources :profiles, only: [:show, :index]
  resources :news_articles
  resources :comments, only: [:show,:index, :create, :destroy, :update]
  resources :users, only: [:show, :create, :destroy, :update, :index]
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/me", to: "users#show"
  get "/yourprofile", to: "users#show"
  patch "/profileupdate", to: "users#update"
  post "/enter", to: "comments#create"
  get "/allcomments", to: "comments#index"

  # get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
