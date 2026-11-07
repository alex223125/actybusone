require "test_helper"

class PinContentCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pin_content_category = pin_content_categories(:one)
  end

  test "should get index" do
    get pin_content_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_pin_content_category_url
    assert_response :success
  end

  test "should create pin_content_category" do
    assert_difference("PinContentCategory.count") do
      post pin_content_categories_url, params: { pin_content_category: { title: @pin_content_category.title } }
    end

    assert_redirected_to pin_content_category_url(PinContentCategory.last)
  end

  test "should show pin_content_category" do
    get pin_content_category_url(@pin_content_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_pin_content_category_url(@pin_content_category)
    assert_response :success
  end

  test "should update pin_content_category" do
    patch pin_content_category_url(@pin_content_category), params: { pin_content_category: { title: @pin_content_category.title } }
    assert_redirected_to pin_content_category_url(@pin_content_category)
  end

  test "should destroy pin_content_category" do
    assert_difference("PinContentCategory.count", -1) do
      delete pin_content_category_url(@pin_content_category)
    end

    assert_redirected_to pin_content_categories_url
  end
end
