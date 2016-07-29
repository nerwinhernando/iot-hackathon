Rails.application.routes.draw do
  get 'fire_system/index'

  get 'location/index'

  get 'home_page/index'

  get 'meeting_rooms_status', to: 'meeting_rooms#status', as: 'meeting_rooms_status'

  resources :reservations
  resources :meeting_rooms
  resources :employees
  root 'home_page#index'
end
