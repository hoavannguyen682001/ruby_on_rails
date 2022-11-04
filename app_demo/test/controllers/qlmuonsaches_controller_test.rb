require "test_helper"

class QlmuonsachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qlmuonsach = qlmuonsaches(:one)
  end

  test "should get index" do
    get qlmuonsaches_url
    assert_response :success
  end

  test "should get new" do
    get new_qlmuonsach_url
    assert_response :success
  end

  test "should create qlmuonsach" do
    assert_difference("Qlmuonsach.count") do
      post qlmuonsaches_url, params: { qlmuonsach: { lop: @qlmuonsach.lop, masach: @qlmuonsach.masach, name: @qlmuonsach.name, ngaymuon: @qlmuonsach.ngaymuon, ngaytra: @qlmuonsach.ngaytra, stt: @qlmuonsach.stt, tenTG: @qlmuonsach.tenTG, tensach: @qlmuonsach.tensach } }
    end

    assert_redirected_to qlmuonsach_url(Qlmuonsach.last)
  end

  test "should show qlmuonsach" do
    get qlmuonsach_url(@qlmuonsach)
    assert_response :success
  end

  test "should get edit" do
    get edit_qlmuonsach_url(@qlmuonsach)
    assert_response :success
  end

  test "should update qlmuonsach" do
    patch qlmuonsach_url(@qlmuonsach), params: { qlmuonsach: { lop: @qlmuonsach.lop, masach: @qlmuonsach.masach, name: @qlmuonsach.name, ngaymuon: @qlmuonsach.ngaymuon, ngaytra: @qlmuonsach.ngaytra, stt: @qlmuonsach.stt, tenTG: @qlmuonsach.tenTG, tensach: @qlmuonsach.tensach } }
    assert_redirected_to qlmuonsach_url(@qlmuonsach)
  end

  test "should destroy qlmuonsach" do
    assert_difference("Qlmuonsach.count", -1) do
      delete qlmuonsach_url(@qlmuonsach)
    end

    assert_redirected_to qlmuonsaches_url
  end
end
