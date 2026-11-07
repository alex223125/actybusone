require "application_system_test_case"

class ToolPositionsTest < ApplicationSystemTestCase
  setup do
    @tool_position = tool_positions(:one)
  end

  test "visiting the index" do
    visit tool_positions_url
    assert_selector "h1", text: "Tool positions"
  end

  test "should create tool position" do
    visit tool_positions_url
    click_on "New tool position"

    fill_in "Description", with: @tool_position.description
    fill_in "Title", with: @tool_position.title
    click_on "Create Tool position"

    assert_text "Tool position was successfully created"
    click_on "Back"
  end

  test "should update Tool position" do
    visit tool_position_url(@tool_position)
    click_on "Edit this tool position", match: :first

    fill_in "Description", with: @tool_position.description
    fill_in "Title", with: @tool_position.title
    click_on "Update Tool position"

    assert_text "Tool position was successfully updated"
    click_on "Back"
  end

  test "should destroy Tool position" do
    visit tool_position_url(@tool_position)
    click_on "Destroy this tool position", match: :first

    assert_text "Tool position was successfully destroyed"
  end
end
