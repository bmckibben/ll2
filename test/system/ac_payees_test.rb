require "application_system_test_case"

class AcPayeesTest < ApplicationSystemTestCase
  setup do
    @ac_payee = ac_payees(:one)
  end

  test "visiting the index" do
    visit ac_payees_url
    assert_selector "h1", text: "Ac payees"
  end

  test "should create ac payee" do
    visit ac_payees_url
    click_on "New ac payee"

    check "Active" if @ac_payee.active
    fill_in "Name", with: @ac_payee.name
    click_on "Create Ac payee"

    assert_text "Ac payee was successfully created"
    click_on "Back"
  end

  test "should update Ac payee" do
    visit ac_payee_url(@ac_payee)
    click_on "Edit this ac payee", match: :first

    check "Active" if @ac_payee.active
    fill_in "Name", with: @ac_payee.name
    click_on "Update Ac payee"

    assert_text "Ac payee was successfully updated"
    click_on "Back"
  end

  test "should destroy Ac payee" do
    visit ac_payee_url(@ac_payee)
    click_on "Destroy this ac payee", match: :first

    assert_text "Ac payee was successfully destroyed"
  end
end
