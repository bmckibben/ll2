require "application_system_test_case"

class AcAccountsTest < ApplicationSystemTestCase
  setup do
    @ac_account = ac_accounts(:one)
  end

  test "visiting the index" do
    visit ac_accounts_url
    assert_selector "h1", text: "Ac accounts"
  end

  test "should create ac account" do
    visit ac_accounts_url
    click_on "New ac account"

    fill_in "Ac group", with: @ac_account.ac_group_id
    fill_in "Account number", with: @ac_account.account_number
    check "Active" if @ac_account.active
    fill_in "Bank", with: @ac_account.bank
    fill_in "Datetime", with: @ac_account.datetime
    fill_in "Name", with: @ac_account.name
    fill_in "Opening balance", with: @ac_account.opening_balance
    fill_in "Opening date", with: @ac_account.opening_date
    click_on "Create Ac account"

    assert_text "Ac account was successfully created"
    click_on "Back"
  end

  test "should update Ac account" do
    visit ac_account_url(@ac_account)
    click_on "Edit this ac account", match: :first

    fill_in "Ac group", with: @ac_account.ac_group_id
    fill_in "Account number", with: @ac_account.account_number
    check "Active" if @ac_account.active
    fill_in "Bank", with: @ac_account.bank
    fill_in "Datetime", with: @ac_account.datetime
    fill_in "Name", with: @ac_account.name
    fill_in "Opening balance", with: @ac_account.opening_balance
    fill_in "Opening date", with: @ac_account.opening_date
    click_on "Update Ac account"

    assert_text "Ac account was successfully updated"
    click_on "Back"
  end

  test "should destroy Ac account" do
    visit ac_account_url(@ac_account)
    click_on "Destroy this ac account", match: :first

    assert_text "Ac account was successfully destroyed"
  end
end
