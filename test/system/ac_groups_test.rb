require "application_system_test_case"

class AcGroupsTest < ApplicationSystemTestCase
  setup do
    @ac_group = ac_groups(:one)
  end

  test "visiting the index" do
    visit ac_groups_url
    assert_selector "h1", text: "Ac groups"
  end

  test "should create ac group" do
    visit ac_groups_url
    click_on "New ac group"

    check "Active" if @ac_group.active
    fill_in "Name", with: @ac_group.name
    click_on "Create Ac group"

    assert_text "Ac group was successfully created"
    click_on "Back"
  end

  test "should update Ac group" do
    visit ac_group_url(@ac_group)
    click_on "Edit this ac group", match: :first

    check "Active" if @ac_group.active
    fill_in "Name", with: @ac_group.name
    click_on "Update Ac group"

    assert_text "Ac group was successfully updated"
    click_on "Back"
  end

  test "should destroy Ac group" do
    visit ac_group_url(@ac_group)
    click_on "Destroy this ac group", match: :first

    assert_text "Ac group was successfully destroyed"
  end
end
