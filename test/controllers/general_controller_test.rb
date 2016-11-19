require 'test_helper'

class GeneralControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get general_index_url
    assert_response :success
  end

end
