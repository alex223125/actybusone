require "application_system_test_case"

class DirectionCategoriesTest < ApplicationSystemTestCase
  setup do
    @direction_category = direction_categories(:one)
  end

  test "visiting the index" do
    visit direction_categories_url
    assert_selector "h1", text: "Direction categories"
  end

  test "should create direction category" do
    visit direction_categories_url
    click_on "New direction category"

    fill_in "Name", with: @direction_category.name
    click_on "Create Direction category"

    assert_text "Direction category was successfully created"
    click_on "Back"
  end

  test "should update Direction category" do
    visit direction_category_url(@direction_category)
    click_on "Edit this direction category", match: :first

    fill_in "Name", with: @direction_category.name
    click_on "Update Direction category"

    assert_text "Direction category was successfully updated"
    click_on "Back"
  end

  test "should destroy Direction category" do
    visit direction_category_url(@direction_category)
    click_on "Destroy this direction category", match: :first

    assert_text "Direction category was successfully destroyed"
  end
end
