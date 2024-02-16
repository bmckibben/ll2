require "application_system_test_case"

class AcTransactionStatusesTest < ApplicationSystemTestCase
  setup do
    @ac_transaction_status = ac_transaction_statuses(:one)
  end

  test "visiting the index" do
    visit ac_transaction_statuses_url
    assert_selector "h1", text: "Ac transaction statuses"
  end

  test "should create ac transaction status" do
    visit ac_transaction_statuses_url
    click_on "New ac transaction status"

    fill_in "Name", with: @ac_transaction_status.name
    fill_in "Status code", with: @ac_transaction_status.status_code
    click_on "Create Ac transaction status"

    assert_text "Ac transaction status was successfully created"
    click_on "Back"
  end

  test "should update Ac transaction status" do
    visit ac_transaction_status_url(@ac_transaction_status)
    click_on "Edit this ac transaction status", match: :first

    fill_in "Name", with: @ac_transaction_status.name
    fill_in "Status code", with: @ac_transaction_status.status_code
    click_on "Update Ac transaction status"

    assert_text "Ac transaction status was successfully updated"
    click_on "Back"
  end

  test "should destroy Ac transaction status" do
    visit ac_transaction_status_url(@ac_transaction_status)
    click_on "Destroy this ac transaction status", match: :first

    assert_text "Ac transaction status was successfully destroyed"
  end
end
