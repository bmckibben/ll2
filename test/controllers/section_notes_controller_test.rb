require 'test_helper'

class SectionNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @section_note = section_notes(:one)
  end

  test "should get index" do
    get section_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_section_note_url
    assert_response :success
  end

  test "should create section_note" do
    assert_difference('SectionNote.count') do
      post section_notes_url, params: { section_note: { note: @section_note.note, section_id: @section_note.section_id } }
    end

    assert_redirected_to section_note_url(SectionNote.last)
  end

  test "should show section_note" do
    get section_note_url(@section_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_section_note_url(@section_note)
    assert_response :success
  end

  test "should update section_note" do
    patch section_note_url(@section_note), params: { section_note: { note: @section_note.note, section_id: @section_note.section_id } }
    assert_redirected_to section_note_url(@section_note)
  end

  test "should destroy section_note" do
    assert_difference('SectionNote.count', -1) do
      delete section_note_url(@section_note)
    end

    assert_redirected_to section_notes_url
  end
end
