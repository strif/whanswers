require 'test_helper'

class TopicFollowingsControllerTest < ActionController::TestCase
  setup do
    @topic_following = topic_followings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:topic_followings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create topic_following" do
    assert_difference('TopicFollowing.count') do
      post :create, :topic_following => @topic_following.attributes
    end

    assert_redirected_to topic_following_path(assigns(:topic_following))
  end

  test "should show topic_following" do
    get :show, :id => @topic_following.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @topic_following.to_param
    assert_response :success
  end

  test "should update topic_following" do
    put :update, :id => @topic_following.to_param, :topic_following => @topic_following.attributes
    assert_redirected_to topic_following_path(assigns(:topic_following))
  end

  test "should destroy topic_following" do
    assert_difference('TopicFollowing.count', -1) do
      delete :destroy, :id => @topic_following.to_param
    end

    assert_redirected_to topic_followings_path
  end
end
