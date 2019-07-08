require "application_system_test_case"

class SectionFootnotesTest < ApplicationSystemTestCase
  setup do
    @section_footnote = section_footnotes(:one)
  end

  test "visiting the index" do
    visit section_footnotes_url
    assert_selector "h1", text: "Section Footnotes"
  end

  test "creating a Section footnote" do
    visit section_footnotes_url
    click_on "New Section Footnote"

    fill_in "Integer", with: @section_footnote.integer
    fill_in "Text", with: @section_footnote.text
    click_on "Create Section footnote"

    assert_text "Section footnote was successfully created"
    click_on "Back"
  end

  test "updating a Section footnote" do
    visit section_footnotes_url
    click_on "Edit", match: :first

    fill_in "Integer", with: @section_footnote.integer
    fill_in "Text", with: @section_footnote.text
    click_on "Update Section footnote"

    assert_text "Section footnote was successfully updated"
    click_on "Back"
  end

  test "destroying a Section footnote" do
    visit section_footnotes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Section footnote was successfully destroyed"
  end
end
