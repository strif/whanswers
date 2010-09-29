require 'test_helper'

class QuestionFollowingsControllerTest < ActionController::TestCase
  setup do
    @question_following = question_followings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_followings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_following" do
    assert_difference('QuestionFollowing.count') do
      post :create, :question_following => @question_following.attributes
    end

    assert_redirected_to question_following_path(assigns(:question_following))
  end

  test "should show question_following" do
    get :show, :id => @question_following.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @question_following.to_param
    assert_response :success
  end

  test "should update question_following" do
    put :update, :id => @question_following.to_param, :question_following => @question_following.attributes
    assert_redirected_to question_following_path(assigns(:question_following))
  end

  test "should destroy question_following" do
    assert_difference('QuestionFollowing.count', -1) do
      delete :destroy, :id => @question_following.to_param
    end

    assert_redirected_to question_followings_path
  end
end
