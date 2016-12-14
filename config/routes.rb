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

 devise_for :users
 root to: "home#index"
 get '/dota2', to: "dota#index"
 get '/csgo', to: "csgo#index"
 get '/dashboard', to: "dashboard#index"
end
