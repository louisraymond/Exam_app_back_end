require 'test_helper'

class TestQuestionJoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_question_join = test_question_joins(:one)
  end

  test "should get index" do
    get test_question_joins_url, as: :json
    assert_response :success
  end

  test "should create test_question_join" do
    assert_difference('TestQuestionJoin.count') do
      post test_question_joins_url, params: { test_question_join: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show test_question_join" do
    get test_question_join_url(@test_question_join), as: :json
    assert_response :success
  end

  test "should update test_question_join" do
    patch test_question_join_url(@test_question_join), params: { test_question_join: {  } }, as: :json
    assert_response 200
  end

  test "should destroy test_question_join" do
    assert_difference('TestQuestionJoin.count', -1) do
      delete test_question_join_url(@test_question_join), as: :json
    end

    assert_response 204
  end
end
