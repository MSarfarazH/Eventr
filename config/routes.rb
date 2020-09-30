Rails.application.routes.draw do
  resources :chats
  resources :friends_lists
  resources :events_lists
  resources :events
  resources :users

  get '/', to: 'users#welcome'

  get '/sign_in', to: 'sessions#sign_in'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

