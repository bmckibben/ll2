require "test_helper"

class AcSchedulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ac_schedule = ac_schedules(:one)
  end

  test "should get index" do
    get ac_schedules_url
    assert_response :success
  end

  test "should get new" do
    get new_ac_schedule_url
    assert_response :success
  end

  test "should create ac_schedule" do
    assert_difference("AcSchedule.count") do
      post ac_schedules_url, params: { ac_schedule: { ac_account_id: @ac_schedule.ac_account_id, ac_category_id: @ac_schedule.ac_category_id, ac_payee_id: @ac_schedule.ac_payee_id, ac_sub_category_id: @ac_schedule.ac_sub_category_id, amount: @ac_schedule.amount, auto_insert: @ac_schedule.auto_insert, description: @ac_schedule.description, first_date: @ac_schedule.first_date, frequency: @ac_schedule.frequency, frequency_period: @ac_schedule.frequency_period, type: @ac_schedule.type } }
    end

    assert_redirected_to ac_schedule_url(AcSchedule.last)
  end

  test "should show ac_schedule" do
    get ac_schedule_url(@ac_schedule)
    assert_response :success
  end

  test "should get edit" do
    get edit_ac_schedule_url(@ac_schedule)
    assert_response :success
  end

  test "should update ac_schedule" do
    patch ac_schedule_url(@ac_schedule), params: { ac_schedule: { ac_account_id: @ac_schedule.ac_account_id, ac_category_id: @ac_schedule.ac_category_id, ac_payee_id: @ac_schedule.ac_payee_id, ac_sub_category_id: @ac_schedule.ac_sub_category_id, amount: @ac_schedule.amount, auto_insert: @ac_schedule.auto_insert, description: @ac_schedule.description, first_date: @ac_schedule.first_date, frequency: @ac_schedule.frequency, frequency_period: @ac_schedule.frequency_period, type: @ac_schedule.type } }
    assert_redirected_to ac_schedule_url(@ac_schedule)
  end

  test "should destroy ac_schedule" do
    assert_difference("AcSchedule.count", -1) do
      delete ac_schedule_url(@ac_schedule)
    end

    assert_redirected_to ac_schedules_url
  end
end
