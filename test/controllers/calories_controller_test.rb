require 'test_helper'

class CaloriesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get calories_create_url
    assert_response :success
  end

end
