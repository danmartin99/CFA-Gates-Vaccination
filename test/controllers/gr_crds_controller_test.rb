require 'test_helper'

class GrCrdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gr_crd = gr_crds(:one)
  end

  test "should get index" do
    get gr_crds_url
    assert_response :success
  end

  test "should get new" do
    get new_gr_crd_url
    assert_response :success
  end

  test "should create gr_crd" do
    assert_difference('GrCrd.count') do
      post gr_crds_url, params: { gr_crd: { g_email: @gr_crd.g_email, g_idnum: @gr_crd.g_idnum, g_nam1: @gr_crd.g_nam1, g_name2: @gr_crd.g_name2, g_photo: @gr_crd.g_photo, g_title: @gr_crd.g_title } }
    end

    assert_redirected_to gr_crd_url(GrCrd.last)
  end

  test "should show gr_crd" do
    get gr_crd_url(@gr_crd)
    assert_response :success
  end

  test "should get edit" do
    get edit_gr_crd_url(@gr_crd)
    assert_response :success
  end

  test "should update gr_crd" do
    patch gr_crd_url(@gr_crd), params: { gr_crd: { g_email: @gr_crd.g_email, g_idnum: @gr_crd.g_idnum, g_nam1: @gr_crd.g_nam1, g_name2: @gr_crd.g_name2, g_photo: @gr_crd.g_photo, g_title: @gr_crd.g_title } }
    assert_redirected_to gr_crd_url(@gr_crd)
  end

  test "should destroy gr_crd" do
    assert_difference('GrCrd.count', -1) do
      delete gr_crd_url(@gr_crd)
    end

    assert_redirected_to gr_crds_url
  end
end
