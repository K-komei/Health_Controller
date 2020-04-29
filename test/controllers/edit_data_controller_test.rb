require 'test_helper'

class EditDataControllerTest < ActionDispatch::IntegrationTest
  test "should get Add_Cal" do
    get edit_data_Add_Cal_url
    assert_response :success
  end

end
