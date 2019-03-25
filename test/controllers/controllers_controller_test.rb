require 'test_helper'

class ControllersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @controller = controllers(:one)
  end

  test "should get index" do
    get controllers_url, as: :json
    assert_response :success
  end

  test "should create controller" do
    assert_difference('Controller.count') do
      post controllers_url, params: { controller: { question_joins: @controller.question_joins } }, as: :json
    end

    assert_response 201
  end

  test "should show controller" do
    get controller_url(@controller), as: :json
    assert_response :success
  end

  test "should update controller" do
    patch controller_url(@controller), params: { controller: { question_joins: @controller.question_joins } }, as: :json
    assert_response 200
  end

  test "should destroy controller" do
    assert_difference('Controller.count', -1) do
      delete controller_url(@controller), as: :json
    end

    assert_response 204
  end
end
