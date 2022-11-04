require "application_system_test_case"

class MuonsachesTest < ApplicationSystemTestCase
  setup do
    @muonsach = muonsaches(:one)
  end

  test "visiting the index" do
    visit muonsaches_url
    assert_selector "h1", text: "Muonsaches"
  end

  test "should create muonsach" do
    visit muonsaches_url
    click_on "New muonsach"

    fill_in "Hoten", with: @muonsach.hoten
    fill_in "Lop", with: @muonsach.lop
    fill_in "Masach", with: @muonsach.masach
    fill_in "Ngaymuon", with: @muonsach.ngaymuon
    fill_in "Ngaytra", with: @muonsach.ngaytra
    fill_in "Stt", with: @muonsach.stt
    fill_in "Tensach", with: @muonsach.tensach
    fill_in "Tentg", with: @muonsach.tentg
    fill_in "Tusach", with: @muonsach.tusach
    click_on "Create Muonsach"

    assert_text "Muonsach was successfully created"
    click_on "Back"
  end

  test "should update Muonsach" do
    visit muonsach_url(@muonsach)
    click_on "Edit this muonsach", match: :first

    fill_in "Hoten", with: @muonsach.hoten
    fill_in "Lop", with: @muonsach.lop
    fill_in "Masach", with: @muonsach.masach
    fill_in "Ngaymuon", with: @muonsach.ngaymuon
    fill_in "Ngaytra", with: @muonsach.ngaytra
    fill_in "Stt", with: @muonsach.stt
    fill_in "Tensach", with: @muonsach.tensach
    fill_in "Tentg", with: @muonsach.tentg
    fill_in "Tusach", with: @muonsach.tusach
    click_on "Update Muonsach"

    assert_text "Muonsach was successfully updated"
    click_on "Back"
  end

  test "should destroy Muonsach" do
    visit muonsach_url(@muonsach)
    click_on "Destroy this muonsach", match: :first

    assert_text "Muonsach was successfully destroyed"
  end
end
