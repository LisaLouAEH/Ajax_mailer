Rails.application.routes.draw do
  devise_for :users
  # root ton projet a email#index
  root to: "email#index"
  get '/show/:id', to:'email#show', as: 'show'
  delete '/delete/:id', to:'email#destroy', as: 'delete'
  # -----------------------------
  resources :tasks, except: [:show]
end
