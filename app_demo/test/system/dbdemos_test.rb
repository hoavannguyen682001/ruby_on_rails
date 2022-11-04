require "application_system_test_case"

class DbdemosTest < ApplicationSystemTestCase
  setup do
    @dbdemo = dbdemos(:one)
  end

  test "visiting the index" do
    visit dbdemos_url
    assert_selector "h1", text: "Dbdemos"
  end

  test "should create dbdemo" do
    visit dbdemos_url
    click_on "New dbdemo"

    fill_in "Email", with: @dbdemo.email
    fill_in "First name", with: @dbdemo.first_name
    fill_in "Last name", with: @dbdemo.last_name
    fill_in "Phone", with: @dbdemo.phone
    click_on "Create Dbdemo"

    assert_text "Dbdemo was successfully created"
    click_on "Back"
  end

  test "should update Dbdemo" do
    visit dbdemo_url(@dbdemo)
    click_on "Edit this dbdemo", match: :first

    fill_in "Email", with: @dbdemo.email
    fill_in "First name", with: @dbdemo.first_name
    fill_in "Last name", with: @dbdemo.last_name
    fill_in "Phone", with: @dbdemo.phone
    click_on "Update Dbdemo"

    assert_text "Dbdemo was successfully updated"
    click_on "Back"
  end

  test "should destroy Dbdemo" do
    visit dbdemo_url(@dbdemo)
    click_on "Destroy this dbdemo", match: :first

    assert_text "Dbdemo was successfully destroyed"
  end
end
