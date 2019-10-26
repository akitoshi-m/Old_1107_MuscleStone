require 'test_helper'

class ChartControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get chart_new_url
    assert_response :success
  end

  test "should get index" do
    get chart_index_url
    assert_response :success
  end

end
