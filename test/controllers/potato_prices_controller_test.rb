require "test_helper"

class PotatoPricesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get potato_prices_index_url
    assert_response :success
  end
end
