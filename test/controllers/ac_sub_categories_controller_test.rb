require "test_helper"

class AcSubCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ac_sub_category = ac_sub_categories(:one)
  end

  test "should get index" do
    get ac_sub_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_ac_sub_category_url
    assert_response :success
  end

  test "should create ac_sub_category" do
    assert_difference("AcSubCategory.count") do
      post ac_sub_categories_url, params: { ac_sub_category: { ac_category_id: @ac_sub_category.ac_category_id, budget: @ac_sub_category.budget, name: @ac_sub_category.name } }
    end

    assert_redirected_to ac_sub_category_url(AcSubCategory.last)
  end

  test "should show ac_sub_category" do
    get ac_sub_category_url(@ac_sub_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_ac_sub_category_url(@ac_sub_category)
    assert_response :success
  end

  test "should update ac_sub_category" do
    patch ac_sub_category_url(@ac_sub_category), params: { ac_sub_category: { ac_category_id: @ac_sub_category.ac_category_id, budget: @ac_sub_category.budget, name: @ac_sub_category.name } }
    assert_redirected_to ac_sub_category_url(@ac_sub_category)
  end

  test "should destroy ac_sub_category" do
    assert_difference("AcSubCategory.count", -1) do
      delete ac_sub_category_url(@ac_sub_category)
    end

    assert_redirected_to ac_sub_categories_url
  end
end
