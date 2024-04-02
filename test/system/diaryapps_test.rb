require "application_system_test_case"

class DiaryappsTest < ApplicationSystemTestCase
  setup do
    @diaryapp = diaryapps(:one)
  end

  test "visiting the index" do
    visit diaryapps_url
    assert_selector "h1", text: "Diaryapps"
  end

  test "should create diaryapp" do
    visit diaryapps_url
    click_on "New diaryapp"

    fill_in "Body", with: @diaryapp.body
    fill_in "Title", with: @diaryapp.title
    click_on "Create Diaryapp"

    assert_text "Diaryapp was successfully created"
    click_on "Back"
  end

  test "should update Diaryapp" do
    visit diaryapp_url(@diaryapp)
    click_on "Edit this diaryapp", match: :first

    fill_in "Body", with: @diaryapp.body
    fill_in "Title", with: @diaryapp.title
    click_on "Update Diaryapp"

    assert_text "Diaryapp was successfully updated"
    click_on "Back"
  end

  test "should destroy Diaryapp" do
    visit diaryapp_url(@diaryapp)
    click_on "Destroy this diaryapp", match: :first

    assert_text "Diaryapp was successfully destroyed"
  end
end
