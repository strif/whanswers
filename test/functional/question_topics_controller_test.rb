require 'test_helper'

class QuestionTopicsControllerTest < ActionController::TestCase
  setup do
    @question_topic = question_topics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_topics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_topic" do
    assert_difference('QuestionTopic.count') do
      post :create, :question_topic => @question_topic.attributes
    end

    assert_redirected_to question_topic_path(assigns(:question_topic))
  end

  test "should show question_topic" do
    get :show, :id => @question_topic.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @question_topic.to_param
    assert_response :success
  end

  test "should update question_topic" do
    put :update, :id => @question_topic.to_param, :question_topic => @question_topic.attributes
    assert_redirected_to question_topic_path(assigns(:question_topic))
  end

  test "should destroy question_topic" do
    assert_difference('QuestionTopic.count', -1) do
      delete :destroy, :id => @question_topic.to_param
    end

    assert_redirected_to question_topics_path
  end
end
