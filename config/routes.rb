Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :appearances, only: [:new, :show, :create]
  #Sessions
  root to: 'sessions#new'
  get '/signin', to: 'sessions#new', as: :signin
  post '/sessions', to: 'sessions#create'
end
