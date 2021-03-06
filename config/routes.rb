Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "events#index"
  resources :events
  resources :users, only: [:index, :show]
  resources :event_attendees, only: [:create, :destroy]
end
