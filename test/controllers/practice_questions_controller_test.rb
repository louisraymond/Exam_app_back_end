require 'test_helper'

class PracticeQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @practice_question = practice_questions(:one)
  end

  test "should get index" do
    get practice_questions_url, as: :json
    assert_response :success
  end

  test "should create practice_question" do
    assert_difference('PracticeQuestion.count') do
      post practice_questions_url, params: { practice_question: { hint_text: @practice_question.hint_text, question_text: @practice_question.question_text, times_used: @practice_question.times_used, title: @practice_question.title } }, as: :json
    end

    assert_response 201
  end

  test "should show practice_question" do
    get practice_question_url(@practice_question), as: :json
    assert_response :success
  end

  test "should update practice_question" do
    patch practice_question_url(@practice_question), params: { practice_question: { hint_text: @practice_question.hint_text, question_text: @practice_question.question_text, times_used: @practice_question.times_used, title: @practice_question.title } }, as: :json
    assert_response 200
  end

  test "should destroy practice_question" do
    assert_difference('PracticeQuestion.count', -1) do
      delete practice_question_url(@practice_question), as: :json
    end

    assert_response 204
  end
end
