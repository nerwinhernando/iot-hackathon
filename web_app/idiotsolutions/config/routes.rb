Rails.application.routes.draw do
  get 'home_page/index'

  resources :reservations
  resources :reservations
  resources :meeting_rooms
  resources :employees
  root 'home_page#index'
end
