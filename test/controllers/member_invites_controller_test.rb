require "test_helper"

class MemberInvitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member_invite = member_invites(:one)
  end

  test "should get index" do
    get member_invites_url
    assert_response :success
  end

  test "should get new" do
    get new_member_invite_url
    assert_response :success
  end

  test "should create member_invite" do
    assert_difference("MemberInvite.count") do
      post member_invites_url, params: { member_invite: { user_id: @member_invite.user_id } }
    end

    assert_redirected_to member_invite_url(MemberInvite.last)
  end

  test "should show member_invite" do
    get member_invite_url(@member_invite)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_invite_url(@member_invite)
    assert_response :success
  end

  test "should update member_invite" do
    patch member_invite_url(@member_invite), params: { member_invite: { user_id: @member_invite.user_id } }
    assert_redirected_to member_invite_url(@member_invite)
  end

  test "should destroy member_invite" do
    assert_difference("MemberInvite.count", -1) do
      delete member_invite_url(@member_invite)
    end

    assert_redirected_to member_invites_url
  end
end
