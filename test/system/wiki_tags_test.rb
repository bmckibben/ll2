require "application_system_test_case"

class WikiTagsTest < ApplicationSystemTestCase
  setup do
    @wiki_tag = wiki_tags(:one)
  end

  test "visiting the index" do
    visit wiki_tags_url
    assert_selector "h1", text: "Wiki Tags"
  end

  test "creating a Wiki tag" do
    visit wiki_tags_url
    click_on "New Wiki Tag"

    fill_in "Tag", with: @wiki_tag.tag_id
    fill_in "Wiki", with: @wiki_tag.wiki_id
    click_on "Create Wiki tag"

    assert_text "Wiki tag was successfully created"
    click_on "Back"
  end

  test "updating a Wiki tag" do
    visit wiki_tags_url
    click_on "Edit", match: :first

    fill_in "Tag", with: @wiki_tag.tag_id
    fill_in "Wiki", with: @wiki_tag.wiki_id
    click_on "Update Wiki tag"

    assert_text "Wiki tag was successfully updated"
    click_on "Back"
  end

  test "destroying a Wiki tag" do
    visit wiki_tags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wiki tag was successfully destroyed"
  end
end
