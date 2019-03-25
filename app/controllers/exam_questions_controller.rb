class ExamQuestionsController < ApplicationController
  before_action :set_exam_question, only: [:show, :update, :destroy]

  # GET /exam_questions
  def index
    @exam_questions = ExamQuestion.all

    render json: @exam_questions
  end

  # GET /exam_questions/1
  def show
    render json: @exam_question
  end

  # POST /exam_questions
  def create
    @exam_question = ExamQuestion.new(exam_question_params)
    @exam_question.get_questions

    if @exam_question.save
      render json: @exam_question, status: :created, location: @exam_question
    else
      render json: @exam_question.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /exam_questions/1
  def update
    if @exam_question.update(exam_question_params)
      render json: @exam_question
    else
      render json: @exam_question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /exam_questions/1
  def destroy
    @exam_question.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exam_question
      @exam_question = ExamQuestion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def exam_question_params
      params.require(:exam_question).permit(:title, :question_text, :explanation_text)
    end
end
