require 'test_helper'

class TestPapersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_paper = test_papers(:one)
  end

  test "should get index" do
    get test_papers_url, as: :json
    assert_response :success
  end

  test "should create test_paper" do
    assert_difference('TestPaper.count') do
      post test_papers_url, params: { test_paper: { for_practice: @test_paper.for_practice, name: @test_paper.name } }, as: :json
    end

    assert_response 201
  end

  test "should show test_paper" do
    get test_paper_url(@test_paper), as: :json
    assert_response :success
  end

  test "should update test_paper" do
    patch test_paper_url(@test_paper), params: { test_paper: { for_practice: @test_paper.for_practice, name: @test_paper.name } }, as: :json
    assert_response 200
  end

  test "should destroy test_paper" do
    assert_difference('TestPaper.count', -1) do
      delete test_paper_url(@test_paper), as: :json
    end

    assert_response 204
  end
end
