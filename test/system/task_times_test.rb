require "application_system_test_case"

class TaskTimesTest < ApplicationSystemTestCase
  setup do
    @task_time = task_times(:one)
  end

  test "visiting the index" do
    visit task_times_url
    assert_selector "h1", text: "Task times"
  end

  test "should create task time" do
    visit task_times_url
    click_on "New task time"

    fill_in "Description", with: @task_time.description
    fill_in "End date", with: @task_time.end_date
    fill_in "Start date", with: @task_time.start_date
    click_on "Create Task time"

    assert_text "Task time was successfully created"
    click_on "Back"
  end

  test "should update Task time" do
    visit task_time_url(@task_time)
    click_on "Edit this task time", match: :first

    fill_in "Description", with: @task_time.description
    fill_in "End date", with: @task_time.end_date
    fill_in "Start date", with: @task_time.start_date
    click_on "Update Task time"

    assert_text "Task time was successfully updated"
    click_on "Back"
  end

  test "should destroy Task time" do
    visit task_time_url(@task_time)
    click_on "Destroy this task time", match: :first

    assert_text "Task time was successfully destroyed"
  end
end
