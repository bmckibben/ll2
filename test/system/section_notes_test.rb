require "application_system_test_case"

class SectionNotesTest < ApplicationSystemTestCase
  setup do
    @section_note = section_notes(:one)
  end

  test "visiting the index" do
    visit section_notes_url
    assert_selector "h1", text: "Section Notes"
  end

  test "creating a Section note" do
    visit section_notes_url
    click_on "New Section Note"

    fill_in "Note", with: @section_note.note
    fill_in "Section", with: @section_note.section_id
    click_on "Create Section note"

    assert_text "Section note was successfully created"
    click_on "Back"
  end

  test "updating a Section note" do
    visit section_notes_url
    click_on "Edit", match: :first

    fill_in "Note", with: @section_note.note
    fill_in "Section", with: @section_note.section_id
    click_on "Update Section note"

    assert_text "Section note was successfully updated"
    click_on "Back"
  end

  test "destroying a Section note" do
    visit section_notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Section note was successfully destroyed"
  end
end
