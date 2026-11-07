require "application_system_test_case"

class ImplementatorsTest < ApplicationSystemTestCase
  setup do
    @implementator = implementators(:one)
  end

  test "visiting the index" do
    visit implementators_url
    assert_selector "h1", text: "Implementators"
  end

  test "should create implementator" do
    visit implementators_url
    click_on "New implementator"

    fill_in "Title", with: @implementator.title
    click_on "Create Implementator"

    assert_text "Implementator was successfully created"
    click_on "Back"
  end

  test "should update Implementator" do
    visit implementator_url(@implementator)
    click_on "Edit this implementator", match: :first

    fill_in "Title", with: @implementator.title
    click_on "Update Implementator"

    assert_text "Implementator was successfully updated"
    click_on "Back"
  end

  test "should destroy Implementator" do
    visit implementator_url(@implementator)
    click_on "Destroy this implementator", match: :first

    assert_text "Implementator was successfully destroyed"
  end
end
