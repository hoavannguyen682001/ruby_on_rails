require "test_helper"

class DbdemosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dbdemo = dbdemos(:one)
  end

  test "should get index" do
    get dbdemos_url
    assert_response :success
  end

  test "should get new" do
    get new_dbdemo_url
    assert_response :success
  end

  test "should create dbdemo" do
    assert_difference("Dbdemo.count") do
      post dbdemos_url, params: { dbdemo: { email: @dbdemo.email, first_name: @dbdemo.first_name, last_name: @dbdemo.last_name, phone: @dbdemo.phone } }
    end

    assert_redirected_to dbdemo_url(Dbdemo.last)
  end

  test "should show dbdemo" do
    get dbdemo_url(@dbdemo)
    assert_response :success
  end

  test "should get edit" do
    get edit_dbdemo_url(@dbdemo)
    assert_response :success
  end

  test "should update dbdemo" do
    patch dbdemo_url(@dbdemo), params: { dbdemo: { email: @dbdemo.email, first_name: @dbdemo.first_name, last_name: @dbdemo.last_name, phone: @dbdemo.phone } }
    assert_redirected_to dbdemo_url(@dbdemo)
  end

  test "should destroy dbdemo" do
    assert_difference("Dbdemo.count", -1) do
      delete dbdemo_url(@dbdemo)
    end

    assert_redirected_to dbdemos_url
  end
end
