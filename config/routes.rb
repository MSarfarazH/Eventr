Rails.application.routes.draw do
  resources :event_interests
  resources :user_interests
  resources :interests
  resources :chats
  resources :friends_lists
  resources :events_lists
  resources :events
  resources :users

  root 'users#welcome'

  get '/sign_in', to: 'sessions#sign_in'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'

  get '/users/:id/friends', to: 'users#friends'

  post '/user_interests/new', to: 'user_interests#create'
  post '/event_interests/new', to: 'event_interests#create'
  get '/events/:id/categories', to: 'events#categories'
  patch '/users/', to: 'users#update'
  put '/users/', to: 'users#update'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

