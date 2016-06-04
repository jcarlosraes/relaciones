require 'test_helper'

class RenovationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @renovation = renovations(:one)
  end

  test "should get index" do
    get renovations_url
    assert_response :success
  end

  test "should get new" do
    get new_renovation_url
    assert_response :success
  end

  test "should create renovation" do
    assert_difference('Renovation.count') do
      post renovations_url, params: { renovation: { contract_id: @renovation.contract_id, end_time: @renovation.end_time, start_date: @renovation.start_date } }
    end

    assert_redirected_to renovation_path(Renovation.last)
  end

  test "should show renovation" do
    get renovation_url(@renovation)
    assert_response :success
  end

  test "should get edit" do
    get edit_renovation_url(@renovation)
    assert_response :success
  end

  test "should update renovation" do
    patch renovation_url(@renovation), params: { renovation: { contract_id: @renovation.contract_id, end_time: @renovation.end_time, start_date: @renovation.start_date } }
    assert_redirected_to renovation_path(@renovation)
  end

  test "should destroy renovation" do
    assert_difference('Renovation.count', -1) do
      delete renovation_url(@renovation)
    end

    assert_redirected_to renovations_path
  end
end
