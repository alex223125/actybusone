require "application_system_test_case"

class DirectionsTest < ApplicationSystemTestCase
  setup do
    @direction = directions(:one)
  end

  test "visiting the index" do
    visit directions_url
    assert_selector "h1", text: "Directions"
  end

  test "should create direction" do
    visit directions_url
    click_on "New direction"

    fill_in "Name", with: @direction.name
    click_on "Create Direction"

    assert_text "Direction was successfully created"
    click_on "Back"
  end

  test "should update Direction" do
    visit direction_url(@direction)
    click_on "Edit this direction", match: :first

    fill_in "Name", with: @direction.name
    click_on "Update Direction"

    assert_text "Direction was successfully updated"
    click_on "Back"
  end

  test "should destroy Direction" do
    visit direction_url(@direction)
    click_on "Destroy this direction", match: :first

    assert_text "Direction was successfully destroyed"
  end
end
