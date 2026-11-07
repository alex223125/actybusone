require "test_helper"

class ToolPositionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tool_position = tool_positions(:one)
  end

  test "should get index" do
    get tool_positions_url
    assert_response :success
  end

  test "should get new" do
    get new_tool_position_url
    assert_response :success
  end

  test "should create tool_position" do
    assert_difference("ToolPosition.count") do
      post tool_positions_url, params: { tool_position: { description: @tool_position.description, title: @tool_position.title } }
    end

    assert_redirected_to tool_position_url(ToolPosition.last)
  end

  test "should show tool_position" do
    get tool_position_url(@tool_position)
    assert_response :success
  end

  test "should get edit" do
    get edit_tool_position_url(@tool_position)
    assert_response :success
  end

  test "should update tool_position" do
    patch tool_position_url(@tool_position), params: { tool_position: { description: @tool_position.description, title: @tool_position.title } }
    assert_redirected_to tool_position_url(@tool_position)
  end

  test "should destroy tool_position" do
    assert_difference("ToolPosition.count", -1) do
      delete tool_position_url(@tool_position)
    end

    assert_redirected_to tool_positions_url
  end
end
