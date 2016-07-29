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
    @reserve = MeetingRoom.where(id: params[:id], reservation_date: @date).where("time_start < ?", @time).where("time_end > ?", @time)
    render nothing: true, status: :not_found unless @reserve.present?
  end
end
