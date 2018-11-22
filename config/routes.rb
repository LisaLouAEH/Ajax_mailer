Rails.application.routes.draw do
  devise_for :users
  # root ton projet a email#index
  root to: "email#index"
  get '/show/:id', to:'email#show', as: 'show'
  
  # -----------------------------
  resources :tasks, except: [:show]
end
