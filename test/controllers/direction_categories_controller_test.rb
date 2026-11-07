require "test_helper"

class DirectionCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @direction_category = direction_categories(:one)
  end

  test "should get index" do
    get direction_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_direction_category_url
    assert_response :success
  end

  test "should create direction_category" do
    assert_difference("DirectionCategory.count") do
      post direction_categories_url, params: { direction_category: { name: @direction_category.name } }
    end

    assert_redirected_to direction_category_url(DirectionCategory.last)
  end

  test "should show direction_category" do
    get direction_category_url(@direction_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_direction_category_url(@direction_category)
    assert_response :success
  end

  test "should update direction_category" do
    patch direction_category_url(@direction_category), params: { direction_category: { name: @direction_category.name } }
    assert_redirected_to direction_category_url(@direction_category)
  end

  test "should destroy direction_category" do
    assert_difference("DirectionCategory.count", -1) do
      delete direction_category_url(@direction_category)
    end

    assert_redirected_to direction_categories_url
  end
end
