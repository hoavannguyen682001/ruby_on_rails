require "test_helper"

class MuonsachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @muonsach = muonsaches(:one)
  end

  test "should get index" do
    get muonsaches_url
    assert_response :success
  end

  test "should get new" do
    get new_muonsach_url
    assert_response :success
  end

  test "should create muonsach" do
    assert_difference("Muonsach.count") do
      post muonsaches_url, params: { muonsach: { hoten: @muonsach.hoten, lop: @muonsach.lop, masach: @muonsach.masach, ngaymuon: @muonsach.ngaymuon, ngaytra: @muonsach.ngaytra, stt: @muonsach.stt, tensach: @muonsach.tensach, tentg: @muonsach.tentg, tusach: @muonsach.tusach } }
    end

    assert_redirected_to muonsach_url(Muonsach.last)
  end

  test "should show muonsach" do
    get muonsach_url(@muonsach)
    assert_response :success
  end

  test "should get edit" do
    get edit_muonsach_url(@muonsach)
    assert_response :success
  end

  test "should update muonsach" do
    patch muonsach_url(@muonsach), params: { muonsach: { hoten: @muonsach.hoten, lop: @muonsach.lop, masach: @muonsach.masach, ngaymuon: @muonsach.ngaymuon, ngaytra: @muonsach.ngaytra, stt: @muonsach.stt, tensach: @muonsach.tensach, tentg: @muonsach.tentg, tusach: @muonsach.tusach } }
    assert_redirected_to muonsach_url(@muonsach)
  end

  test "should destroy muonsach" do
    assert_difference("Muonsach.count", -1) do
      delete muonsach_url(@muonsach)
    end

    assert_redirected_to muonsaches_url
  end
end
