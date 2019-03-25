class TestsController < ApplicationController
  before_action :set_test, only: [:show, :update, :destroy, :practice_questions, :exam_questions]

  # GET /test
  def index
    @test = Test.all

    render json: @test
  end

  # GET /test/1
  def show
    render json: @test
  end

  # POST /test
  def create
    @test = Test.new(test_params)
    if @test.save
      render json: @test, status: :created, location: @test
    else
      render json: @test.errors, status: :unprocessable_entity
    end
  end

  def practice_questions
    @questions = @test.practice_questions
    render json: @questions
  end

  def exam_questions
    @questions = @test.exam_questions
    render json: @questions
  end

  # PATCH/PUT /test/1
  def update
    if @test.update(test_params)
      render json: @test
    else
      render json: @test.errors, status: :unprocessable_entity
    end
  end

  # DELETE /test/1
  def destroy
    @test.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test
      @test = Test.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def test_params
      params.require(:test).permit(:name, :for_practice)
    end
end
