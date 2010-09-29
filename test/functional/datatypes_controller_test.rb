require 'test_helper'

class DatatypesControllerTest < ActionController::TestCase
  setup do
    @datatype = datatypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:datatypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create datatype" do
    assert_difference('Datatype.count') do
      post :create, :datatype => @datatype.attributes
    end

    assert_redirected_to datatype_path(assigns(:datatype))
  end

  test "should show datatype" do
    get :show, :id => @datatype.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @datatype.to_param
    assert_response :success
  end

  test "should update datatype" do
    put :update, :id => @datatype.to_param, :datatype => @datatype.attributes
    assert_redirected_to datatype_path(assigns(:datatype))
  end

  test "should destroy datatype" do
    assert_difference('Datatype.count', -1) do
      delete :destroy, :id => @datatype.to_param
    end

    assert_redirected_to datatypes_path
  end
end
