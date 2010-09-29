require 'test_helper'

class UserFollowingsControllerTest < ActionController::TestCase
  setup do
    @user_following = user_followings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_followings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_following" do
    assert_difference('UserFollowing.count') do
      post :create, :user_following => @user_following.attributes
    end

    assert_redirected_to user_following_path(assigns(:user_following))
  end

  test "should show user_following" do
    get :show, :id => @user_following.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @user_following.to_param
    assert_response :success
  end

  test "should update user_following" do
    put :update, :id => @user_following.to_param, :user_following => @user_following.attributes
    assert_redirected_to user_following_path(assigns(:user_following))
  end

  test "should destroy user_following" do
    assert_difference('UserFollowing.count', -1) do
      delete :destroy, :id => @user_following.to_param
    end

    assert_redirected_to user_followings_path
  end
end
