require 'test_helper'

class TechControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tech_index_url
    assert_response :success
  end

  test "should get show" do
    get tech_show_url
    assert_response :success
  end

end
