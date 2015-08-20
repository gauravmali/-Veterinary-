require 'test_helper'

class NextAppointmentsControllerTest < ActionController::TestCase
  setup do
    @next_appointment = next_appointments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:next_appointments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create next_appointment" do
    assert_difference('NextAppointment.count') do
      post :create, next_appointment: { appointment_id: @next_appointment.appointment_id, next_date: @next_appointment.next_date }
    end

    assert_redirected_to next_appointment_path(assigns(:next_appointment))
  end

  test "should show next_appointment" do
    get :show, id: @next_appointment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @next_appointment
    assert_response :success
  end

  test "should update next_appointment" do
    patch :update, id: @next_appointment, next_appointment: { appointment_id: @next_appointment.appointment_id, next_date: @next_appointment.next_date }
    assert_redirected_to next_appointment_path(assigns(:next_appointment))
  end

  test "should destroy next_appointment" do
    assert_difference('NextAppointment.count', -1) do
      delete :destroy, id: @next_appointment
    end

    assert_redirected_to next_appointments_path
  end
end
