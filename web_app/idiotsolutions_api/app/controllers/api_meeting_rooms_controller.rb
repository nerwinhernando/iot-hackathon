class ApiMeetingRoomsController < ApplicationController
  before_filter :set_date_time, only: [:show, :update]
  def show
    @meeting_rooms = MeetingRoom.all.as_json
    @meeting_rooms.each_with_index do |m,i|
      find_reservation(m["id"])
      @reserve.each do |r|
        @meeting_rooms[i]["status"] = r.status
      end
    end
    render json: @meeting_rooms
  end
  def update
    find_reservation(params[:id])
    @reserve.update(status: params[:status])
    render json: @reserve
  end

  private 

  def set_date_time
    @date = Date.today
    @time = Time.now.to_formatted_s(:time)
  end

  def find_reservation(id)
    @reservations = Reservation.where(meeting_room_id: id).where("time_start < ?", @time).where("time_end > ?", @time)
    if @reservations.exists?(reservation_date: @date)
      @reserve = @reservations.where(reservation_date: @date)
    else
      @reserve = Reservation.where(meeting_room_id: id, reservation_date: nil)
      @reserve.update(time_start: @time, time_end: @time)
    end
    render nothing: true, status: :not_found unless @reserve.present?
  end
end
