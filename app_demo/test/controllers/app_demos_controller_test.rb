require "test_helper"

class AppDemosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app_demo = app_demos(:one)
  end

  test "should get index" do
    get app_demos_url
    assert_response :success
  end

  test "should get new" do
    get new_app_demo_url
    assert_response :success
  end

  test "should create app_demo" do
    assert_difference("AppDemo.count") do
      post app_demos_url, params: { app_demo: { last_name: @app_demo.last_name, name: @app_demo.name } }
    end

    assert_redirected_to app_demo_url(AppDemo.last)
  end

  test "should show app_demo" do
    get app_demo_url(@app_demo)
    assert_response :success
  end

  test "should get edit" do
    get edit_app_demo_url(@app_demo)
    assert_response :success
  end

  test "should update app_demo" do
    patch app_demo_url(@app_demo), params: { app_demo: { last_name: @app_demo.last_name, name: @app_demo.name } }
    assert_redirected_to app_demo_url(@app_demo)
  end

  test "should destroy app_demo" do
    assert_difference("AppDemo.count", -1) do
      delete app_demo_url(@app_demo)
    end

    assert_redirected_to app_demos_url
  end
end
