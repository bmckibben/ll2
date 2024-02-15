require "test_helper"

class AcAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ac_account = ac_accounts(:one)
  end

  test "should get index" do
    get ac_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_ac_account_url
    assert_response :success
  end

  test "should create ac_account" do
    assert_difference("AcAccount.count") do
      post ac_accounts_url, params: { ac_account: { ac_group_id: @ac_account.ac_group_id, account_number: @ac_account.account_number, active: @ac_account.active, bank: @ac_account.bank, datetime: @ac_account.datetime, name: @ac_account.name, opening_balance: @ac_account.opening_balance, opening_date: @ac_account.opening_date } }
    end

    assert_redirected_to ac_account_url(AcAccount.last)
  end

  test "should show ac_account" do
    get ac_account_url(@ac_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_ac_account_url(@ac_account)
    assert_response :success
  end

  test "should update ac_account" do
    patch ac_account_url(@ac_account), params: { ac_account: { ac_group_id: @ac_account.ac_group_id, account_number: @ac_account.account_number, active: @ac_account.active, bank: @ac_account.bank, datetime: @ac_account.datetime, name: @ac_account.name, opening_balance: @ac_account.opening_balance, opening_date: @ac_account.opening_date } }
    assert_redirected_to ac_account_url(@ac_account)
  end

  test "should destroy ac_account" do
    assert_difference("AcAccount.count", -1) do
      delete ac_account_url(@ac_account)
    end

    assert_redirected_to ac_accounts_url
  end
end
