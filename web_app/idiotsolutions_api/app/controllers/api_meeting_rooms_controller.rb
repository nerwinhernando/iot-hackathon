class ApiMeetingRoomsController < ApplicationController
  # before_filter :find_reservation, only: [:show, :update]

  def show
    logger.debug params
    @reserve = MeetingRoom.find(params[:id])
    render json: @reserve
  end

  def update
    # @reserve.assign_attributes(@json['project'])
    # if @reserve.save
    #     render json: @project
    # else
    #     render nothing: true, status: :bad_request
    # end
  end

 private
   # def find_reservation
   #   @reserve = Reservation.find_by_name(params[:name])
   #   render nothing: true, status: :not_found unless @reserve.present?
   # end

end
