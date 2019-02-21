require "application_system_test_case"

class WikisTest < ApplicationSystemTestCase
  setup do
    @wiki = wikis(:one)
  end

  test "visiting the index" do
    visit wikis_url
    assert_selector "h1", text: "Wikis"
  end

  test "creating a Wiki" do
    visit wikis_url
    click_on "New Wiki"

    fill_in "Body", with: @wiki.body
    fill_in "Default sort", with: @wiki.default_sort
    fill_in "Deleted", with: @wiki.deleted
    fill_in "Last revision", with: @wiki.last_revision
    fill_in "Parent", with: @wiki.parent
    fill_in "Title", with: @wiki.title
    fill_in "User", with: @wiki.user_id
    fill_in "Version", with: @wiki.version
    click_on "Create Wiki"

    assert_text "Wiki was successfully created"
    click_on "Back"
  end

  test "updating a Wiki" do
    visit wikis_url
    click_on "Edit", match: :first

    fill_in "Body", with: @wiki.body
    fill_in "Default sort", with: @wiki.default_sort
    fill_in "Deleted", with: @wiki.deleted
    fill_in "Last revision", with: @wiki.last_revision
    fill_in "Parent", with: @wiki.parent
    fill_in "Title", with: @wiki.title
    fill_in "User", with: @wiki.user_id
    fill_in "Version", with: @wiki.version
    click_on "Update Wiki"

    assert_text "Wiki was successfully updated"
    click_on "Back"
  end

  test "destroying a Wiki" do
    visit wikis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wiki was successfully destroyed"
  end
end
