require 'test_helper'

class TwomodalControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get twomodal_index_url
    assert_response :success
  end

end
