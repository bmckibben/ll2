require "application_system_test_case"

class HtmlPagesTest < ApplicationSystemTestCase
  setup do
    @html_page = html_pages(:one)
  end

  test "visiting the index" do
    visit html_pages_url
    assert_selector "h1", text: "Html Pages"
  end

  test "creating a Html page" do
    visit html_pages_url
    click_on "New Html Page"

    fill_in "Active", with: @html_page.active
    fill_in "Content", with: @html_page.content
    fill_in "Slug", with: @html_page.slug
    fill_in "Title", with: @html_page.title
    click_on "Create Html page"

    assert_text "Html page was successfully created"
    click_on "Back"
  end

  test "updating a Html page" do
    visit html_pages_url
    click_on "Edit", match: :first

    fill_in "Active", with: @html_page.active
    fill_in "Content", with: @html_page.content
    fill_in "Slug", with: @html_page.slug
    fill_in "Title", with: @html_page.title
    click_on "Update Html page"

    assert_text "Html page was successfully updated"
    click_on "Back"
  end

  test "destroying a Html page" do
    visit html_pages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Html page was successfully destroyed"
  end
end
