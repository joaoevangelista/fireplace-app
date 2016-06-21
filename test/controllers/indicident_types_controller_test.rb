require 'test_helper'

class IndicidentTypesControllerTest < ActionController::TestCase
  setup do
    @indicident_type = indicident_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indicident_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indicident_type" do
    assert_difference('IndicidentType.count') do
      post :create, indicident_type: { name: @indicident_type.name }
    end

    assert_redirected_to indicident_type_path(assigns(:indicident_type))
  end

  test "should show indicident_type" do
    get :show, id: @indicident_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @indicident_type
    assert_response :success
  end

  test "should update indicident_type" do
    patch :update, id: @indicident_type, indicident_type: { name: @indicident_type.name }
    assert_redirected_to indicident_type_path(assigns(:indicident_type))
  end

  test "should destroy indicident_type" do
    assert_difference('IndicidentType.count', -1) do
      delete :destroy, id: @indicident_type
    end

    assert_redirected_to indicident_types_path
  end
end
