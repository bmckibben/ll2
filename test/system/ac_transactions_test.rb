require "application_system_test_case"

class AcTransactionsTest < ApplicationSystemTestCase
  setup do
    @ac_transaction = ac_transactions(:one)
  end

  test "visiting the index" do
    visit ac_transactions_url
    assert_selector "h1", text: "Ac transactions"
  end

  test "should create ac transaction" do
    visit ac_transactions_url
    click_on "New ac transaction"

    fill_in "Ac account", with: @ac_transaction.ac_account_id
    fill_in "Ac category", with: @ac_transaction.ac_category_id
    fill_in "Ac payee", with: @ac_transaction.ac_payee_id
    fill_in "Ac sub category", with: @ac_transaction.ac_sub_category_id
    fill_in "Ac transaction status", with: @ac_transaction.ac_transaction_status_id
    fill_in "Amount", with: @ac_transaction.amount
    fill_in "Check number", with: @ac_transaction.check_number
    fill_in "Date", with: @ac_transaction.date
    fill_in "Description", with: @ac_transaction.description
    click_on "Create Ac transaction"

    assert_text "Ac transaction was successfully created"
    click_on "Back"
  end

  test "should update Ac transaction" do
    visit ac_transaction_url(@ac_transaction)
    click_on "Edit this ac transaction", match: :first

    fill_in "Ac account", with: @ac_transaction.ac_account_id
    fill_in "Ac category", with: @ac_transaction.ac_category_id
    fill_in "Ac payee", with: @ac_transaction.ac_payee_id
    fill_in "Ac sub category", with: @ac_transaction.ac_sub_category_id
    fill_in "Ac transaction status", with: @ac_transaction.ac_transaction_status_id
    fill_in "Amount", with: @ac_transaction.amount
    fill_in "Check number", with: @ac_transaction.check_number
    fill_in "Date", with: @ac_transaction.date
    fill_in "Description", with: @ac_transaction.description
    click_on "Update Ac transaction"

    assert_text "Ac transaction was successfully updated"
    click_on "Back"
  end

  test "should destroy Ac transaction" do
    visit ac_transaction_url(@ac_transaction)
    click_on "Destroy this ac transaction", match: :first

    assert_text "Ac transaction was successfully destroyed"
  end
end
