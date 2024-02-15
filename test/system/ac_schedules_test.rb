require "application_system_test_case"

class AcSchedulesTest < ApplicationSystemTestCase
  setup do
    @ac_schedule = ac_schedules(:one)
  end

  test "visiting the index" do
    visit ac_schedules_url
    assert_selector "h1", text: "Ac schedules"
  end

  test "should create ac schedule" do
    visit ac_schedules_url
    click_on "New ac schedule"

    fill_in "Ac account", with: @ac_schedule.ac_account_id
    fill_in "Ac category", with: @ac_schedule.ac_category_id
    fill_in "Ac payee", with: @ac_schedule.ac_payee_id
    fill_in "Ac sub category", with: @ac_schedule.ac_sub_category_id
    fill_in "Amount", with: @ac_schedule.amount
    check "Auto insert" if @ac_schedule.auto_insert
    fill_in "Description", with: @ac_schedule.description
    fill_in "First date", with: @ac_schedule.first_date
    fill_in "Frequency", with: @ac_schedule.frequency
    fill_in "Frequency period", with: @ac_schedule.frequency_period
    fill_in "Type", with: @ac_schedule.type
    click_on "Create Ac schedule"

    assert_text "Ac schedule was successfully created"
    click_on "Back"
  end

  test "should update Ac schedule" do
    visit ac_schedule_url(@ac_schedule)
    click_on "Edit this ac schedule", match: :first

    fill_in "Ac account", with: @ac_schedule.ac_account_id
    fill_in "Ac category", with: @ac_schedule.ac_category_id
    fill_in "Ac payee", with: @ac_schedule.ac_payee_id
    fill_in "Ac sub category", with: @ac_schedule.ac_sub_category_id
    fill_in "Amount", with: @ac_schedule.amount
    check "Auto insert" if @ac_schedule.auto_insert
    fill_in "Description", with: @ac_schedule.description
    fill_in "First date", with: @ac_schedule.first_date
    fill_in "Frequency", with: @ac_schedule.frequency
    fill_in "Frequency period", with: @ac_schedule.frequency_period
    fill_in "Type", with: @ac_schedule.type
    click_on "Update Ac schedule"

    assert_text "Ac schedule was successfully updated"
    click_on "Back"
  end

  test "should destroy Ac schedule" do
    visit ac_schedule_url(@ac_schedule)
    click_on "Destroy this ac schedule", match: :first

    assert_text "Ac schedule was successfully destroyed"
  end
end
