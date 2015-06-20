require 'test_helper'

class DoctorAddsControllerTest < ActionController::TestCase
  setup do
    @doctor_add = doctor_adds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doctor_adds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doctor_add" do
    assert_difference('DoctorAdd.count') do
      post :create, doctor_add: { docFamily: @doctor_add.docFamily, docName: @doctor_add.docName, from: @doctor_add.from, speciality: @doctor_add.speciality, to: @doctor_add.to, total: @doctor_add.total, used: @doctor_add.used }
    end

    assert_redirected_to doctor_add_path(assigns(:doctor_add))
  end

  test "should show doctor_add" do
    get :show, id: @doctor_add
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doctor_add
    assert_response :success
  end

  test "should update doctor_add" do
    patch :update, id: @doctor_add, doctor_add: { docFamily: @doctor_add.docFamily, docName: @doctor_add.docName, from: @doctor_add.from, speciality: @doctor_add.speciality, to: @doctor_add.to, total: @doctor_add.total, used: @doctor_add.used }
    assert_redirected_to doctor_add_path(assigns(:doctor_add))
  end

  test "should destroy doctor_add" do
    assert_difference('DoctorAdd.count', -1) do
      delete :destroy, id: @doctor_add
    end

    assert_redirected_to doctor_adds_path
  end
end
