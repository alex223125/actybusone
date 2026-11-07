require "application_system_test_case"

class PinContentCategoriesTest < ApplicationSystemTestCase
  setup do
    @pin_content_category = pin_content_categories(:one)
  end

  test "visiting the index" do
    visit pin_content_categories_url
    assert_selector "h1", text: "Pin content categories"
  end

  test "should create pin content category" do
    visit pin_content_categories_url
    click_on "New pin content category"

    fill_in "Title", with: @pin_content_category.title
    click_on "Create Pin content category"

    assert_text "Pin content category was successfully created"
    click_on "Back"
  end

  test "should update Pin content category" do
    visit pin_content_category_url(@pin_content_category)
    click_on "Edit this pin content category", match: :first

    fill_in "Title", with: @pin_content_category.title
    click_on "Update Pin content category"

    assert_text "Pin content category was successfully updated"
    click_on "Back"
  end

  test "should destroy Pin content category" do
    visit pin_content_category_url(@pin_content_category)
    click_on "Destroy this pin content category", match: :first

    assert_text "Pin content category was successfully destroyed"
  end
end
