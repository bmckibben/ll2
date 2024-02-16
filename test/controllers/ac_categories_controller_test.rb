require "test_helper"

class AcCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ac_category = ac_categories(:one)
  end

  test "should get index" do
    get ac_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_ac_category_url
    assert_response :success
  end

  test "should create ac_category" do
    assert_difference("AcCategory.count") do
      post ac_categories_url, params: { ac_category: { budget: @ac_category.budget, name: @ac_category.name } }
    end

    assert_redirected_to ac_category_url(AcCategory.last)
  end

  test "should show ac_category" do
    get ac_category_url(@ac_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_ac_category_url(@ac_category)
    assert_response :success
  end

  test "should update ac_category" do
    patch ac_category_url(@ac_category), params: { ac_category: { budget: @ac_category.budget, name: @ac_category.name } }
    assert_redirected_to ac_category_url(@ac_category)
  end

  test "should destroy ac_category" do
    assert_difference("AcCategory.count", -1) do
      delete ac_category_url(@ac_category)
    end

    assert_redirected_to ac_categories_url
  end
end
