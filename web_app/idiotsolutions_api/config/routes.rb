Rails.application.routes.draw do
  get 'api_reservations/update'

  scope '/api' do
    scope '/v1' do

      scope '/meeting_rooms' do
        get '/' => 'api_meeting_rooms#show'
        match '/' => 'api_meeting_rooms#update', via: [:put, :patch, :post]
      end

      scope '/reservations' do
        get '/' => 'api_reservations#show'
        match '/' => 'api_reservations#update', via: [:put, :patch, :post]
      end

      scope '/fire_system' do
        get '/' => 'api_fire_system#show'
        match '/' => 'api_fire_system#create', via: [:put, :patch, :post]
      end

      scope '/location' do
        get '/' => 'api_location#show'
        post '/' => 'api_location#create'
        match '/' => 'api_location#update', via: [:put, :patch, :post]
      end

    end
  end
end
