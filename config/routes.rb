Rails.application.routes.draw do
  namespace :admin do
    resources :users
resources :dota_news
resources :dota_reddits
resources :dota_streamers

    root to: "users#index"
  end

  get 'csgo/index'

  devise_for :users
 root to: "home#index"
 get '/dota2', to: "dota#index"
 get '/csgo', to: "csgo#index"
end
