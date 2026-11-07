require "test_helper"

class RegularitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @regularity = regularities(:one)
  end

  test "should get index" do
    get regularities_url
    assert_response :success
  end

  test "should get new" do
    get new_regularity_url
    assert_response :success
  end

  test "should create regularity" do
    assert_difference("Regularity.count") do
      post regularities_url, params: { regularity: { title: @regularity.title } }
    end

    assert_redirected_to regularity_url(Regularity.last)
  end

  test "should show regularity" do
    get regularity_url(@regularity)
    assert_response :success
  end

  test "should get edit" do
    get edit_regularity_url(@regularity)
    assert_response :success
  end

  test "should update regularity" do
    patch regularity_url(@regularity), params: { regularity: { title: @regularity.title } }
    assert_redirected_to regularity_url(@regularity)
  end

  test "should destroy regularity" do
    assert_difference("Regularity.count", -1) do
      delete regularity_url(@regularity)
    end

    assert_redirected_to regularities_url
  end
end
