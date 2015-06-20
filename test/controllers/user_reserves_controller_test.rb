require 'test_helper'

class UserReservesControllerTest < ActionController::TestCase
  setup do
    @user_reserf = user_reserves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_reserves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_reserf" do
    assert_difference('UserReserve.count') do
      post :create, user_reserf: { date: @user_reserf.date, doctor_id: @user_reserf.doctor_id, reserve_id: @user_reserf.reserve_id, turn: @user_reserf.turn, user_id: @user_reserf.user_id }
    end

    assert_redirected_to user_reserf_path(assigns(:user_reserf))
  end

  test "should show user_reserf" do
    get :show, id: @user_reserf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_reserf
    assert_response :success
  end

  test "should update user_reserf" do
    patch :update, id: @user_reserf, user_reserf: { date: @user_reserf.date, doctor_id: @user_reserf.doctor_id, reserve_id: @user_reserf.reserve_id, turn: @user_reserf.turn, user_id: @user_reserf.user_id }
    assert_redirected_to user_reserf_path(assigns(:user_reserf))
  end

  test "should destroy user_reserf" do
    assert_difference('UserReserve.count', -1) do
      delete :destroy, id: @user_reserf
    end

    assert_redirected_to user_reserves_path
  end
end
