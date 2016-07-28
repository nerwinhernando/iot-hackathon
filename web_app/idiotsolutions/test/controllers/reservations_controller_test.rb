require 'test_helper'

class ReservationsControllerTest < ActionController::TestCase
  setup do
    @reservation = reservations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reservations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reservation" do
    assert_difference('Reservation.count') do
      post :create, reservation: { employee_id: @reservation.employee_id, meeting_room_id: @reservation.meeting_room_id, no_of_participants: @reservation.no_of_participants, purpose: @reservation.purpose, reservation_date: @reservation.reservation_date, time_end: @reservation.time_end, time_start: @reservation.time_start }
    end

    assert_redirected_to reservation_path(assigns(:reservation))
  end

  test "should show reservation" do
    get :show, id: @reservation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reservation
    assert_response :success
  end

  test "should update reservation" do
    patch :update, id: @reservation, reservation: { employee_id: @reservation.employee_id, meeting_room_id: @reservation.meeting_room_id, no_of_participants: @reservation.no_of_participants, purpose: @reservation.purpose, reservation_date: @reservation.reservation_date, time_end: @reservation.time_end, time_start: @reservation.time_start }
    assert_redirected_to reservation_path(assigns(:reservation))
  end

  test "should destroy reservation" do
    assert_difference('Reservation.count', -1) do
      delete :destroy, id: @reservation
    end

    assert_redirected_to reservations_path
  end
end
