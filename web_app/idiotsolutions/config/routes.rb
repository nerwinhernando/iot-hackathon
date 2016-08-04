Rails.application.routes.draw do
  get 'fire_system/index'

  get 'location/index'

  get 'home_page/index'

  get 'meeting_rooms_status', to: 'meeting_rooms#status', as: 'meeting_rooms_status'
  get 'meeting_rooms_analytics', to: 'meeting_rooms#analytics', as: 'meeting_rooms_analytics'

  post 'reservations', to: 'reservations#index', as: 'reservations_index'

  resources :reservations
  resources :meeting_rooms
  resources :employees
  root 'home_page#index'
end
