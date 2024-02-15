require "test_helper"

class AcTransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ac_transaction = ac_transactions(:one)
  end

  test "should get index" do
    get ac_transactions_url
    assert_response :success
  end

  test "should get new" do
    get new_ac_transaction_url
    assert_response :success
  end

  test "should create ac_transaction" do
    assert_difference("AcTransaction.count") do
      post ac_transactions_url, params: { ac_transaction: { ac_account_id: @ac_transaction.ac_account_id, ac_category_id: @ac_transaction.ac_category_id, ac_payee_id: @ac_transaction.ac_payee_id, ac_sub_category_id: @ac_transaction.ac_sub_category_id, ac_transaction_status_id: @ac_transaction.ac_transaction_status_id, amount: @ac_transaction.amount, check_number: @ac_transaction.check_number, date: @ac_transaction.date, description: @ac_transaction.description } }
    end

    assert_redirected_to ac_transaction_url(AcTransaction.last)
  end

  test "should show ac_transaction" do
    get ac_transaction_url(@ac_transaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_ac_transaction_url(@ac_transaction)
    assert_response :success
  end

  test "should update ac_transaction" do
    patch ac_transaction_url(@ac_transaction), params: { ac_transaction: { ac_account_id: @ac_transaction.ac_account_id, ac_category_id: @ac_transaction.ac_category_id, ac_payee_id: @ac_transaction.ac_payee_id, ac_sub_category_id: @ac_transaction.ac_sub_category_id, ac_transaction_status_id: @ac_transaction.ac_transaction_status_id, amount: @ac_transaction.amount, check_number: @ac_transaction.check_number, date: @ac_transaction.date, description: @ac_transaction.description } }
    assert_redirected_to ac_transaction_url(@ac_transaction)
  end

  test "should destroy ac_transaction" do
    assert_difference("AcTransaction.count", -1) do
      delete ac_transaction_url(@ac_transaction)
    end

    assert_redirected_to ac_transactions_url
  end
end
