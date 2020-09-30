Rails.application.routes.draw do
  resources :chats
  resources :friends_lists
  resources :events_lists
  resources :events
  resources :users

  get '/', to: 'users#welcome'

  get '/log_in', to: 'sessions#sign_in'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'

  get '/users/:id/friends', to: 'users#friends'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

