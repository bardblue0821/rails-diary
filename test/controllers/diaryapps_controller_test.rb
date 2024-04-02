require "test_helper"

class DiaryappsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diaryapp = diaryapps(:one)
  end

  test "should get index" do
    get diaryapps_url
    assert_response :success
  end

  test "should get new" do
    get new_diaryapp_url
    assert_response :success
  end

  test "should create diaryapp" do
    assert_difference("Diaryapp.count") do
      post diaryapps_url, params: { diaryapp: { body: @diaryapp.body, title: @diaryapp.title } }
    end

    assert_redirected_to diaryapp_url(Diaryapp.last)
  end

  test "should show diaryapp" do
    get diaryapp_url(@diaryapp)
    assert_response :success
  end

  test "should get edit" do
    get edit_diaryapp_url(@diaryapp)
    assert_response :success
  end

  test "should update diaryapp" do
    patch diaryapp_url(@diaryapp), params: { diaryapp: { body: @diaryapp.body, title: @diaryapp.title } }
    assert_redirected_to diaryapp_url(@diaryapp)
  end

  test "should destroy diaryapp" do
    assert_difference("Diaryapp.count", -1) do
      delete diaryapp_url(@diaryapp)
    end

    assert_redirected_to diaryapps_url
  end
end
