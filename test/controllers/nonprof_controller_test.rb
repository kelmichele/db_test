require 'test_helper'

class NonprofControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nonprof_index_url
    assert_response :success
  end

end
