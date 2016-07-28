Rails.application.routes.draw do
  resources :reservations
  resources :reservations
  resources :meeting_rooms
  resources :employees
  root 'reservations#index'
end
