require "test_helper"

class MemberPositionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member_position = member_positions(:one)
  end

  test "should get index" do
    get member_positions_url
    assert_response :success
  end

  test "should get new" do
    get new_member_position_url
    assert_response :success
  end

  test "should create member_position" do
    assert_difference("MemberPosition.count") do
      post member_positions_url, params: { member_position: { title: @member_position.title } }
    end

    assert_redirected_to member_position_url(MemberPosition.last)
  end

  test "should show member_position" do
    get member_position_url(@member_position)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_position_url(@member_position)
    assert_response :success
  end

  test "should update member_position" do
    patch member_position_url(@member_position), params: { member_position: { title: @member_position.title } }
    assert_redirected_to member_position_url(@member_position)
  end

  test "should destroy member_position" do
    assert_difference("MemberPosition.count", -1) do
      delete member_position_url(@member_position)
    end

    assert_redirected_to member_positions_url
  end
end
