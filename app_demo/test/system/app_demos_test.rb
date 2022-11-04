require "application_system_test_case"

class AppDemosTest < ApplicationSystemTestCase
  setup do
    @app_demo = app_demos(:one)
  end

  test "visiting the index" do
    visit app_demos_url
    assert_selector "h1", text: "App demos"
  end

  test "should create app demo" do
    visit app_demos_url
    click_on "New app demo"

    fill_in "Last name", with: @app_demo.last_name
    fill_in "Name", with: @app_demo.name
    click_on "Create App demo"

    assert_text "App demo was successfully created"
    click_on "Back"
  end

  test "should update App demo" do
    visit app_demo_url(@app_demo)
    click_on "Edit this app demo", match: :first

    fill_in "Last name", with: @app_demo.last_name
    fill_in "Name", with: @app_demo.name
    click_on "Update App demo"

    assert_text "App demo was successfully updated"
    click_on "Back"
  end

  test "should destroy App demo" do
    visit app_demo_url(@app_demo)
    click_on "Destroy this app demo", match: :first

    assert_text "App demo was successfully destroyed"
  end
end
