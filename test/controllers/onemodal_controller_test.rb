require 'test_helper'

class OnemodalControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get onemodal_index_url
    assert_response :success
  end

end
