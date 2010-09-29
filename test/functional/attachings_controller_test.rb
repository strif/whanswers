require 'test_helper'

class AttachingsControllerTest < ActionController::TestCase
  setup do
    @attaching = attachings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attachings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attaching" do
    assert_difference('Attaching.count') do
      post :create, :attaching => @attaching.attributes
    end

    assert_redirected_to attaching_path(assigns(:attaching))
  end

  test "should show attaching" do
    get :show, :id => @attaching.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @attaching.to_param
    assert_response :success
  end

  test "should update attaching" do
    put :update, :id => @attaching.to_param, :attaching => @attaching.attributes
    assert_redirected_to attaching_path(assigns(:attaching))
  end

  test "should destroy attaching" do
    assert_difference('Attaching.count', -1) do
      delete :destroy, :id => @attaching.to_param
    end

    assert_redirected_to attachings_path
  end
end
