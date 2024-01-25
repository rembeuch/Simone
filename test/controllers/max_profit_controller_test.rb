require "test_helper"

class MaxProfitControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get max_profit_index_url
    assert_response :success
  end
end
