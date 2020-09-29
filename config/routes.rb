Rails.application.routes.draw do
  resources :chats
  resources :friends_lists
  resources :events_lists
  resources :events
  resources :users

  get '/', to: 'users#welcome'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
