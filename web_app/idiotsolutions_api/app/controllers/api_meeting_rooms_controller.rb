class ApiMeetingRoomsController < ApplicationController
  before_filter :find_reservation, only: [:show, :update]
  def show
    render json: @reserve
  end
  def update
    @reserve.update(status: params[:status])
    render json: @reserve
  end
  def find_reservation
    @date = Date.today
    @time = Time.now.to_formatted_s(:time)
    @reservations = Reservation.where(meeting_room_id: params[:id]).where("time_start < ?", @time).where("time_end > ?", @time)
    if @reservations.exists?(reservation_date: @date)
      @reserve = @reservations.where(reservation_date: @date)
    else
      @reserve = Reservation.where(meeting_room_id: params[:id], reservation_date: nil)
      @reserve.update(time_start: @time, time_end: @time)
    end
    render nothing: true, status: :not_found unless @reserve.present?
  end
end
