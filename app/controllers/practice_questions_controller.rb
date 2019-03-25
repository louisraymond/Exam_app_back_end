class PracticeQuestionsController < ApplicationController
  before_action :set_practice_question, only: [:show, :update, :destroy]

  # GET /practice_questions
  def index
    @practice_questions = PracticeQuestion.all

    render json: @practice_questions
  end

  # GET /practice_questions/1
  def show
    render json: @practice_question
  end

  # POST /practice_questions
  def create
    @practice_question = PracticeQuestion.new(practice_question_params)

    if @practice_question.save
      render json: @practice_question, status: :created, location: @practice_question
    else
      render json: @practice_question.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /practice_questions/1
  def update
    if @practice_question.update(practice_question_params)
      render json: @practice_question
    else
      render json: @practice_question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /practice_questions/1
  def destroy
    @practice_question.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_practice_question
      @practice_question = PracticeQuestion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def practice_question_params
      params.require(:practice_question).permit(:title, :question_text, :hint_text)
    end
end
