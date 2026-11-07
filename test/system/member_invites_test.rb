require "application_system_test_case"

class MemberInvitesTest < ApplicationSystemTestCase
  setup do
    @member_invite = member_invites(:one)
  end

  test "visiting the index" do
    visit member_invites_url
    assert_selector "h1", text: "Member invites"
  end

  test "should create member invite" do
    visit member_invites_url
    click_on "New member invite"

    fill_in "User", with: @member_invite.user_id
    click_on "Create Member invite"

    assert_text "Member invite was successfully created"
    click_on "Back"
  end

  test "should update Member invite" do
    visit member_invite_url(@member_invite)
    click_on "Edit this member invite", match: :first

    fill_in "User", with: @member_invite.user_id
    click_on "Update Member invite"

    assert_text "Member invite was successfully updated"
    click_on "Back"
  end

  test "should destroy Member invite" do
    visit member_invite_url(@member_invite)
    click_on "Destroy this member invite", match: :first

    assert_text "Member invite was successfully destroyed"
  end
end
