require "application_system_test_case"

class RegularitiesTest < ApplicationSystemTestCase
  setup do
    @regularity = regularities(:one)
  end

  test "visiting the index" do
    visit regularities_url
    assert_selector "h1", text: "Regularities"
  end

  test "should create regularity" do
    visit regularities_url
    click_on "New regularity"

    fill_in "Title", with: @regularity.title
    click_on "Create Regularity"

    assert_text "Regularity was successfully created"
    click_on "Back"
  end

  test "should update Regularity" do
    visit regularity_url(@regularity)
    click_on "Edit this regularity", match: :first

    fill_in "Title", with: @regularity.title
    click_on "Update Regularity"

    assert_text "Regularity was successfully updated"
    click_on "Back"
  end

  test "should destroy Regularity" do
    visit regularity_url(@regularity)
    click_on "Destroy this regularity", match: :first

    assert_text "Regularity was successfully destroyed"
  end
end
