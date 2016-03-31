require 'test_helper'

class ParkingsControllerTest < ActionController::TestCase
  setup do
    @parking = parkings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parkings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parking" do
    assert_difference('Parking.count') do
      post :create, parking: { date_end: @parking.date_end, date_start: @parking.date_start, description: @parking.description, hour_end: @parking.hour_end, hour_start: @parking.hour_start, name_favorite: @parking.name_favorite, state: @parking.state, state_favorite: @parking.state_favorite, type_rent: @parking.type_rent }
    end

    assert_redirected_to parking_path(assigns(:parking))
  end

  test "should show parking" do
    get :show, id: @parking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parking
    assert_response :success
  end

  test "should update parking" do
    patch :update, id: @parking, parking: { date_end: @parking.date_end, date_start: @parking.date_start, description: @parking.description, hour_end: @parking.hour_end, hour_start: @parking.hour_start, name_favorite: @parking.name_favorite, state: @parking.state, state_favorite: @parking.state_favorite, type_rent: @parking.type_rent }
    assert_redirected_to parking_path(assigns(:parking))
  end

  test "should destroy parking" do
    assert_difference('Parking.count', -1) do
      delete :destroy, id: @parking
    end

    assert_redirected_to parkings_path
  end
end
