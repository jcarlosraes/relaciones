require 'test_helper'

class ThreemodalControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get threemodal_index_url
    assert_response :success
  end

end
