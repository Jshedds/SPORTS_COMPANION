require "test_helper"

class EquipmentNeedsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get equipment_needs_new_url
    assert_response :success
  end

  test "should get create" do
    get equipment_needs_create_url
    assert_response :success
  end
end
