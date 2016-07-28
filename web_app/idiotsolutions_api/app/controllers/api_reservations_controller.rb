class ApiReservationsController < ApplicationController
  before_filter :find_reservation, only: [:show, :update]
  def show
    render json: @reserve
  end
  def update
    @reserve.update(status: 2)
    render json: @reserve
  end
	def find_reservation
    @reserve = Reservation.where(meeting_room_id: params[:id])
    render nothing: true, status: :not_found unless @reserve.present?
	end
end
