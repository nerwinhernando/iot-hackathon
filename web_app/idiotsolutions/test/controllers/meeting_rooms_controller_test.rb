require 'test_helper'

class MeetingRoomsControllerTest < ActionController::TestCase
  setup do
    @meeting_room = meeting_rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meeting_rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meeting_room" do
    assert_difference('MeetingRoom.count') do
      post :create, meeting_room: { area: @meeting_room.area, capacity: @meeting_room.capacity, employee_id: @meeting_room.employee_id, equipment: @meeting_room.equipment, no_of_participants: @meeting_room.no_of_participants, no_of_participants: @meeting_room.no_of_participants, purpose: @meeting_room.purpose, reservation_date: @meeting_room.reservation_date, room: @meeting_room.room, time_end: @meeting_room.time_end, time_start: @meeting_room.time_start }
    end

    assert_redirected_to meeting_room_path(assigns(:meeting_room))
  end

  test "should show meeting_room" do
    get :show, id: @meeting_room
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meeting_room
    assert_response :success
  end

  test "should update meeting_room" do
    patch :update, id: @meeting_room, meeting_room: { area: @meeting_room.area, capacity: @meeting_room.capacity, employee_id: @meeting_room.employee_id, equipment: @meeting_room.equipment, no_of_participants: @meeting_room.no_of_participants, no_of_participants: @meeting_room.no_of_participants, purpose: @meeting_room.purpose, reservation_date: @meeting_room.reservation_date, room: @meeting_room.room, time_end: @meeting_room.time_end, time_start: @meeting_room.time_start }
    assert_redirected_to meeting_room_path(assigns(:meeting_room))
  end

  test "should destroy meeting_room" do
    assert_difference('MeetingRoom.count', -1) do
      delete :destroy, id: @meeting_room
    end

    assert_redirected_to meeting_rooms_path
  end
end
