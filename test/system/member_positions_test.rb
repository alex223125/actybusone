require "application_system_test_case"

class MemberPositionsTest < ApplicationSystemTestCase
  setup do
    @member_position = member_positions(:one)
  end

  test "visiting the index" do
    visit member_positions_url
    assert_selector "h1", text: "Member positions"
  end

  test "should create member position" do
    visit member_positions_url
    click_on "New member position"

    fill_in "Title", with: @member_position.title
    click_on "Create Member position"

    assert_text "Member position was successfully created"
    click_on "Back"
  end

  test "should update Member position" do
    visit member_position_url(@member_position)
    click_on "Edit this member position", match: :first

    fill_in "Title", with: @member_position.title
    click_on "Update Member position"

    assert_text "Member position was successfully updated"
    click_on "Back"
  end

  test "should destroy Member position" do
    visit member_position_url(@member_position)
    click_on "Destroy this member position", match: :first

    assert_text "Member position was successfully destroyed"
  end
end
