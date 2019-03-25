require 'test_helper'

class ExamQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exam_question = exam_questions(:one)
  end

  test "should get index" do
    get exam_questions_url, as: :json
    assert_response :success
  end

  test "should create exam_question" do
    assert_difference('ExamQuestion.count') do
      post exam_questions_url, params: { exam_question: { explanation-text: @exam_question.explanation-text, question-text: @exam_question.question-text, title: @exam_question.title, used: @exam_question.used } }, as: :json
    end

    assert_response 201
  end

  test "should show exam_question" do
    get exam_question_url(@exam_question), as: :json
    assert_response :success
  end

  test "should update exam_question" do
    patch exam_question_url(@exam_question), params: { exam_question: { explanation-text: @exam_question.explanation-text, question-text: @exam_question.question-text, title: @exam_question.title, used: @exam_question.used } }, as: :json
    assert_response 200
  end

  test "should destroy exam_question" do
    assert_difference('ExamQuestion.count', -1) do
      delete exam_question_url(@exam_question), as: :json
    end

    assert_response 204
  end
end
