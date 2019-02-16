require "application_system_test_case"

class HistoriesTest < ApplicationSystemTestCase
  setup do
    @history = histories(:one)
  end

  test "visiting the index" do
    visit histories_url
    assert_selector "h1", text: "Histories"
  end

  test "creating a History" do
    visit histories_url
    click_on "New History"

    fill_in "Ball 1", with: @history.ball_1
    fill_in "Ball 2", with: @history.ball_2
    fill_in "Ball 3", with: @history.ball_3
    fill_in "Ball 4", with: @history.ball_4
    fill_in "Ball 5", with: @history.ball_5
    fill_in "Date", with: @history.date
    fill_in "Powerball", with: @history.powerball
    click_on "Create History"

    assert_text "History was successfully created"
    click_on "Back"
  end

  test "updating a History" do
    visit histories_url
    click_on "Edit", match: :first

    fill_in "Ball 1", with: @history.ball_1
    fill_in "Ball 2", with: @history.ball_2
    fill_in "Ball 3", with: @history.ball_3
    fill_in "Ball 4", with: @history.ball_4
    fill_in "Ball 5", with: @history.ball_5
    fill_in "Date", with: @history.date
    fill_in "Powerball", with: @history.powerball
    click_on "Update History"

    assert_text "History was successfully updated"
    click_on "Back"
  end

  test "destroying a History" do
    visit histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "History was successfully destroyed"
  end
end
