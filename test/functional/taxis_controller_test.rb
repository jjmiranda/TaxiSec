require 'test_helper'

class TaxisControllerTest < ActionController::TestCase
  setup do
    @taxi = taxis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taxis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taxi" do
    assert_difference('Taxi.count') do
      post :create, taxi: @taxi.attributes
    end

    assert_redirected_to taxi_path(assigns(:taxi))
  end

  test "should show taxi" do
    get :show, id: @taxi.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taxi.to_param
    assert_response :success
  end

  test "should update taxi" do
    put :update, id: @taxi.to_param, taxi: @taxi.attributes
    assert_redirected_to taxi_path(assigns(:taxi))
  end

  test "should destroy taxi" do
    assert_difference('Taxi.count', -1) do
      delete :destroy, id: @taxi.to_param
    end

    assert_redirected_to taxis_path
  end
end
