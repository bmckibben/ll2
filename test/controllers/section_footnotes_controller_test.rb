require 'test_helper'

class SectionFootnotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @section_footnote = section_footnotes(:one)
  end

  test "should get index" do
    get section_footnotes_url
    assert_response :success
  end

  test "should get new" do
    get new_section_footnote_url
    assert_response :success
  end

  test "should create section_footnote" do
    assert_difference('SectionFootnote.count') do
      post section_footnotes_url, params: { section_footnote: { integer: @section_footnote.integer, text: @section_footnote.text } }
    end

    assert_redirected_to section_footnote_url(SectionFootnote.last)
  end

  test "should show section_footnote" do
    get section_footnote_url(@section_footnote)
    assert_response :success
  end

  test "should get edit" do
    get edit_section_footnote_url(@section_footnote)
    assert_response :success
  end

  test "should update section_footnote" do
    patch section_footnote_url(@section_footnote), params: { section_footnote: { integer: @section_footnote.integer, text: @section_footnote.text } }
    assert_redirected_to section_footnote_url(@section_footnote)
  end

  test "should destroy section_footnote" do
    assert_difference('SectionFootnote.count', -1) do
      delete section_footnote_url(@section_footnote)
    end

    assert_redirected_to section_footnotes_url
  end
end
