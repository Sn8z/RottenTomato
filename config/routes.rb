Rails.application.routes.draw do
  namespace :admin do
    resources :users
    #Dota
    resources :dota_news
    resources :dota_reddits
    resources :dota_streamers
    resources :dota_highlights
    resources :dota_youtubes
    resources :dota_guides
    #csgo
    resources :csgo_news
    resources :csgo_reddits
    resources :csgo_streamers
    resources :csgo_highlights
    resources :csgo_youtubes
    resources :csgo_guides

    root to: "users#index"
  end

  get 'csgo/index'

  devise_for :users
 root to: "home#index"
 get '/dota2', to: "dota#index"
 get '/csgo', to: "csgo#index"
end
