Rails.application.routes.draw do
  get 'api_reservations/update'

  scope '/api' do
    scope '/v1' do

      scope '/meeting_rooms' do
        scope '/:id' do
          get '/' => 'api_meeting_rooms#show'
          # put '/' => 'api_meeting_rooms#update'
        end
      end

      scope '/reservations' do
        scope '/:id' do
          get '/' => 'api_reservations#show'
          put '/' => 'api_reservations#update'
        end
      end

    end
  end
end
