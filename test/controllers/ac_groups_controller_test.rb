require "test_helper"

class AcGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ac_group = ac_groups(:one)
  end

  test "should get index" do
    get ac_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_ac_group_url
    assert_response :success
  end

  test "should create ac_group" do
    assert_difference("AcGroup.count") do
      post ac_groups_url, params: { ac_group: { active: @ac_group.active, name: @ac_group.name } }
    end

    assert_redirected_to ac_group_url(AcGroup.last)
  end

  test "should show ac_group" do
    get ac_group_url(@ac_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_ac_group_url(@ac_group)
    assert_response :success
  end

  test "should update ac_group" do
    patch ac_group_url(@ac_group), params: { ac_group: { active: @ac_group.active, name: @ac_group.name } }
    assert_redirected_to ac_group_url(@ac_group)
  end

  test "should destroy ac_group" do
    assert_difference("AcGroup.count", -1) do
      delete ac_group_url(@ac_group)
    end

    assert_redirected_to ac_groups_url
  end
end
