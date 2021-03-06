require 'test_helper'

class CropsControllerTest < ActionDispatch::IntegrationTest
  test "should get rice" do
    get crops_rice_url
    assert_response :success
  end

  test "should get wheat" do
    get crops_wheat_url
    assert_response :success
  end

  test "should get corn" do
    get crops_corn_url
    assert_response :success
  end

end
