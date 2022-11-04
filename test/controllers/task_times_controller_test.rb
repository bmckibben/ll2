require "test_helper"

class TaskTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task_time = task_times(:one)
  end

  test "should get index" do
    get task_times_url
    assert_response :success
  end

  test "should get new" do
    get new_task_time_url
    assert_response :success
  end

  test "should create task_time" do
    assert_difference("TaskTime.count") do
      post task_times_url, params: { task_time: { description: @task_time.description, end_date: @task_time.end_date, start_date: @task_time.start_date } }
    end

    assert_redirected_to task_time_url(TaskTime.last)
  end

  test "should show task_time" do
    get task_time_url(@task_time)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_time_url(@task_time)
    assert_response :success
  end

  test "should update task_time" do
    patch task_time_url(@task_time), params: { task_time: { description: @task_time.description, end_date: @task_time.end_date, start_date: @task_time.start_date } }
    assert_redirected_to task_time_url(@task_time)
  end

  test "should destroy task_time" do
    assert_difference("TaskTime.count", -1) do
      delete task_time_url(@task_time)
    end

    assert_redirected_to task_times_url
  end
end
