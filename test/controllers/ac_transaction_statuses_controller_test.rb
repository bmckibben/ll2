require "test_helper"

class AcTransactionStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ac_transaction_status = ac_transaction_statuses(:one)
  end

  test "should get index" do
    get ac_transaction_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_ac_transaction_status_url
    assert_response :success
  end

  test "should create ac_transaction_status" do
    assert_difference("AcTransactionStatus.count") do
      post ac_transaction_statuses_url, params: { ac_transaction_status: { name: @ac_transaction_status.name, status_code: @ac_transaction_status.status_code } }
    end

    assert_redirected_to ac_transaction_status_url(AcTransactionStatus.last)
  end

  test "should show ac_transaction_status" do
    get ac_transaction_status_url(@ac_transaction_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_ac_transaction_status_url(@ac_transaction_status)
    assert_response :success
  end

  test "should update ac_transaction_status" do
    patch ac_transaction_status_url(@ac_transaction_status), params: { ac_transaction_status: { name: @ac_transaction_status.name, status_code: @ac_transaction_status.status_code } }
    assert_redirected_to ac_transaction_status_url(@ac_transaction_status)
  end

  test "should destroy ac_transaction_status" do
    assert_difference("AcTransactionStatus.count", -1) do
      delete ac_transaction_status_url(@ac_transaction_status)
    end

    assert_redirected_to ac_transaction_statuses_url
  end
end
