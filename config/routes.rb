Rails.application.routes.draw do
  devise_for :users
 root to: "home#index"
 get '/dota2', to: "dota#index"
end
