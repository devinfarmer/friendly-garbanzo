require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
  setup do
    @place = places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create place" do
    assert_difference('Place.count') do
      post :create, place: { address1: @place.address1, address2: @place.address2, address3: @place.address3, address4: @place.address4, city: @place.city, comments: @place.comments, manager: @place.manager, name: @place.name, phone1: @place.phone1, phone2: @place.phone2, phone3: @place.phone3, phone4: @place.phone4, state: @place.state, zip: @place.zip }
    end

    assert_redirected_to place_path(assigns(:place))
  end

  test "should show place" do
    get :show, id: @place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @place
    assert_response :success
  end

  test "should update place" do
    patch :update, id: @place, place: { address1: @place.address1, address2: @place.address2, address3: @place.address3, address4: @place.address4, city: @place.city, comments: @place.comments, manager: @place.manager, name: @place.name, phone1: @place.phone1, phone2: @place.phone2, phone3: @place.phone3, phone4: @place.phone4, state: @place.state, zip: @place.zip }
    assert_redirected_to place_path(assigns(:place))
  end

  test "should destroy place" do
    assert_difference('Place.count', -1) do
      delete :destroy, id: @place
    end

    assert_redirected_to places_path
  end
end