Rails.application.routes.draw do
  namespace :admin do
    resources :users

    resources :games
    resources :news
    resources :reddits
    resources :youtubes
    resources :guides
    resources :streamers
    resources :headlines

    root to: "users#index"
  end

  get 'csgo/index'

  devise_for :users
 root to: "home#index"
 get '/dota2', to: "dota#index"
 get '/dota2/matches', to: "dota#matches"
 get '/csgo', to: "csgo#index"
end
