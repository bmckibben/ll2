require "application_system_test_case"

class AcSubCategoriesTest < ApplicationSystemTestCase
  setup do
    @ac_sub_category = ac_sub_categories(:one)
  end

  test "visiting the index" do
    visit ac_sub_categories_url
    assert_selector "h1", text: "Ac sub categories"
  end

  test "should create ac sub category" do
    visit ac_sub_categories_url
    click_on "New ac sub category"

    fill_in "Ac category", with: @ac_sub_category.ac_category_id
    fill_in "Budget", with: @ac_sub_category.budget
    fill_in "Name", with: @ac_sub_category.name
    click_on "Create Ac sub category"

    assert_text "Ac sub category was successfully created"
    click_on "Back"
  end

  test "should update Ac sub category" do
    visit ac_sub_category_url(@ac_sub_category)
    click_on "Edit this ac sub category", match: :first

    fill_in "Ac category", with: @ac_sub_category.ac_category_id
    fill_in "Budget", with: @ac_sub_category.budget
    fill_in "Name", with: @ac_sub_category.name
    click_on "Update Ac sub category"

    assert_text "Ac sub category was successfully updated"
    click_on "Back"
  end

  test "should destroy Ac sub category" do
    visit ac_sub_category_url(@ac_sub_category)
    click_on "Destroy this ac sub category", match: :first

    assert_text "Ac sub category was successfully destroyed"
  end
end
