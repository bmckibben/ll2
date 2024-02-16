require "application_system_test_case"

class AcCategoriesTest < ApplicationSystemTestCase
  setup do
    @ac_category = ac_categories(:one)
  end

  test "visiting the index" do
    visit ac_categories_url
    assert_selector "h1", text: "Ac categories"
  end

  test "should create ac category" do
    visit ac_categories_url
    click_on "New ac category"

    fill_in "Budget", with: @ac_category.budget
    fill_in "Name", with: @ac_category.name
    click_on "Create Ac category"

    assert_text "Ac category was successfully created"
    click_on "Back"
  end

  test "should update Ac category" do
    visit ac_category_url(@ac_category)
    click_on "Edit this ac category", match: :first

    fill_in "Budget", with: @ac_category.budget
    fill_in "Name", with: @ac_category.name
    click_on "Update Ac category"

    assert_text "Ac category was successfully updated"
    click_on "Back"
  end

  test "should destroy Ac category" do
    visit ac_category_url(@ac_category)
    click_on "Destroy this ac category", match: :first

    assert_text "Ac category was successfully destroyed"
  end
end
