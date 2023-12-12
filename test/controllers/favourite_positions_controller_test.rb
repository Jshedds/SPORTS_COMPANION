require "test_helper"

class FavouritePositionsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get favourite_positions_create_url
    assert_response :success
  end

  test "should get destroy" do
    get favourite_positions_destroy_url
    assert_response :success
  end
end
