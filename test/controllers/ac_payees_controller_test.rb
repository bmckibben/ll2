require "test_helper"

class AcPayeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ac_payee = ac_payees(:one)
  end

  test "should get index" do
    get ac_payees_url
    assert_response :success
  end

  test "should get new" do
    get new_ac_payee_url
    assert_response :success
  end

  test "should create ac_payee" do
    assert_difference("AcPayee.count") do
      post ac_payees_url, params: { ac_payee: { active: @ac_payee.active, name: @ac_payee.name } }
    end

    assert_redirected_to ac_payee_url(AcPayee.last)
  end

  test "should show ac_payee" do
    get ac_payee_url(@ac_payee)
    assert_response :success
  end

  test "should get edit" do
    get edit_ac_payee_url(@ac_payee)
    assert_response :success
  end

  test "should update ac_payee" do
    patch ac_payee_url(@ac_payee), params: { ac_payee: { active: @ac_payee.active, name: @ac_payee.name } }
    assert_redirected_to ac_payee_url(@ac_payee)
  end

  test "should destroy ac_payee" do
    assert_difference("AcPayee.count", -1) do
      delete ac_payee_url(@ac_payee)
    end

    assert_redirected_to ac_payees_url
  end
end
