require 'test_helper'

class SiteviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @siteview = siteviews(:one)
  end

  test "should get index" do
    get siteviews_url
    assert_response :success
  end

  test "should get new" do
    get new_siteview_url
    assert_response :success
  end

  test "should create siteview" do
    assert_difference('Siteview.count') do
      post siteviews_url, params: { siteview: { completed: @siteview.completed, renovation_id: @siteview.renovation_id, visit_date: @siteview.visit_date } }
    end

    assert_redirected_to siteview_path(Siteview.last)
  end

  test "should show siteview" do
    get siteview_url(@siteview)
    assert_response :success
  end

  test "should get edit" do
    get edit_siteview_url(@siteview)
    assert_response :success
  end

  test "should update siteview" do
    patch siteview_url(@siteview), params: { siteview: { completed: @siteview.completed, renovation_id: @siteview.renovation_id, visit_date: @siteview.visit_date } }
    assert_redirected_to siteview_path(@siteview)
  end

  test "should destroy siteview" do
    assert_difference('Siteview.count', -1) do
      delete siteview_url(@siteview)
    end

    assert_redirected_to siteviews_path
  end
end
