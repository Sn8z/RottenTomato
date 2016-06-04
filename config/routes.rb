Rails.application.routes.draw do
  get 'csgo/index'

  devise_for :users
 root to: "home#index"
 get '/dota2', to: "dota#index"
 get '/csgo', to: "csgo#index"
end
