Rails.application.routes.draw do
  devise_for :users
  # root ton projet a email#index
  root to: "email#index"
  get 'create/:id', to:'email#create'
  get 'show', to:'email#show'
  # -----------------------------
  resources :tasks, except: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
