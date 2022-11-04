require "application_system_test_case"

class QlmuonsachesTest < ApplicationSystemTestCase
  setup do
    @qlmuonsach = qlmuonsaches(:one)
  end

  test "visiting the index" do
    visit qlmuonsaches_url
    assert_selector "h1", text: "Qlmuonsaches"
  end

  test "should create qlmuonsach" do
    visit qlmuonsaches_url
    click_on "New qlmuonsach"

    fill_in "Lop", with: @qlmuonsach.lop
    fill_in "Masach", with: @qlmuonsach.masach
    fill_in "Name", with: @qlmuonsach.name
    fill_in "Ngaymuon", with: @qlmuonsach.ngaymuon
    fill_in "Ngaytra", with: @qlmuonsach.ngaytra
    fill_in "Stt", with: @qlmuonsach.stt
    fill_in "Tentg", with: @qlmuonsach.tenTG
    fill_in "Tensach", with: @qlmuonsach.tensach
    click_on "Create Qlmuonsach"

    assert_text "Qlmuonsach was successfully created"
    click_on "Back"
  end

  test "should update Qlmuonsach" do
    visit qlmuonsach_url(@qlmuonsach)
    click_on "Edit this qlmuonsach", match: :first

    fill_in "Lop", with: @qlmuonsach.lop
    fill_in "Masach", with: @qlmuonsach.masach
    fill_in "Name", with: @qlmuonsach.name
    fill_in "Ngaymuon", with: @qlmuonsach.ngaymuon
    fill_in "Ngaytra", with: @qlmuonsach.ngaytra
    fill_in "Stt", with: @qlmuonsach.stt
    fill_in "Tentg", with: @qlmuonsach.tenTG
    fill_in "Tensach", with: @qlmuonsach.tensach
    click_on "Update Qlmuonsach"

    assert_text "Qlmuonsach was successfully updated"
    click_on "Back"
  end

  test "should destroy Qlmuonsach" do
    visit qlmuonsach_url(@qlmuonsach)
    click_on "Destroy this qlmuonsach", match: :first

    assert_text "Qlmuonsach was successfully destroyed"
  end
end
