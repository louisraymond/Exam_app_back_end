require 'test_helper'

class QuestionJoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question_join = question_joins(:one)
  end

  test "should get index" do
    get question_joins_url, as: :json
    assert_response :success
  end

  test "should create question_join" do
    assert_difference('QuestionJoin.count') do
      post question_joins_url, params: { question_join: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show question_join" do
    get question_join_url(@question_join), as: :json
    assert_response :success
  end

  test "should update question_join" do
    patch question_join_url(@question_join), params: { question_join: {  } }, as: :json
    assert_response 200
  end

  test "should destroy question_join" do
    assert_difference('QuestionJoin.count', -1) do
      delete question_join_url(@question_join), as: :json
    end

    assert_response 204
  end
end
