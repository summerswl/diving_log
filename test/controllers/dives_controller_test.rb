require "test_helper"

class DivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dife = dives(:one)
  end

  test "should get index" do
    get dives_url, as: :json
    assert_response :success
  end

  test "should create dife" do
    assert_difference("Dive.count") do
      post dives_url, params: { dife: { body: @dife.body, title: @dife.title } }, as: :json
    end

    assert_response :created
  end

  test "should show dife" do
    get dife_url(@dife), as: :json
    assert_response :success
  end

  test "should update dife" do
    patch dife_url(@dife), params: { dife: { body: @dife.body, title: @dife.title } }, as: :json
    assert_response :success
  end

  test "should destroy dife" do
    assert_difference("Dive.count", -1) do
      delete dife_url(@dife), as: :json
    end

    assert_response :no_content
  end
end
