require 'test_helper'

class RestaurantControllerTest < ActionDispatch::IntegrationTest
  test "should get recources" do
    get restaurant_recources_url
    assert_response :success
  end

end
