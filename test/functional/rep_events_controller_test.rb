require 'test_helper'

class RepEventsControllerTest < ActionController::TestCase
  setup do
    @rep_event = rep_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rep_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rep_event" do
    assert_difference('RepEvent.count') do
      post :create, :rep_event => @rep_event.attributes
    end

    assert_redirected_to rep_event_path(assigns(:rep_event))
  end

  test "should show rep_event" do
    get :show, :id => @rep_event.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @rep_event.to_param
    assert_response :success
  end

  test "should update rep_event" do
    put :update, :id => @rep_event.to_param, :rep_event => @rep_event.attributes
    assert_redirected_to rep_event_path(assigns(:rep_event))
  end

  test "should destroy rep_event" do
    assert_difference('RepEvent.count', -1) do
      delete :destroy, :id => @rep_event.to_param
    end

    assert_redirected_to rep_events_path
  end
end
