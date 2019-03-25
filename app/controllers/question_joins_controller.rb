class QuestionJoinsController < ApplicationController
  before_action :set_question_join, only: [:show, :update, :destroy]

  # GET /question_joins
  def index
    @question_joins = QuestionJoin.all

    render json: @question_joins
  end

  # GET /question_joins/1
  def show
    render json: @question_join
  end

  # POST /question_joins
  def create
    @question_join = QuestionJoin.new(question_join_params)

    if @question_join.save
      render json: @question_join, status: :created, location: @question_join
    else
      render json: @question_join.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /question_joins/1
  def update
    if @question_join.update(question_join_params)
      render json: @question_join
    else
      render json: @question_join.errors, status: :unprocessable_entity
    end
  end

  # DELETE /question_joins/1
  def destroy
    @question_join.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_join
      @question_join = QuestionJoin.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def question_join_params
      params.fetch(:question_join, {})
    end
end
