require "test_helper"

class ImplementatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @implementator = implementators(:one)
  end

  test "should get index" do
    get implementators_url
    assert_response :success
  end

  test "should get new" do
    get new_implementator_url
    assert_response :success
  end

  test "should create implementator" do
    assert_difference("Implementator.count") do
      post implementators_url, params: { implementator: { title: @implementator.title } }
    end

    assert_redirected_to implementator_url(Implementator.last)
  end

  test "should show implementator" do
    get implementator_url(@implementator)
    assert_response :success
  end

  test "should get edit" do
    get edit_implementator_url(@implementator)
    assert_response :success
  end

  test "should update implementator" do
    patch implementator_url(@implementator), params: { implementator: { title: @implementator.title } }
    assert_redirected_to implementator_url(@implementator)
  end

  test "should destroy implementator" do
    assert_difference("Implementator.count", -1) do
      delete implementator_url(@implementator)
    end

    assert_redirected_to implementators_url
  end
end
