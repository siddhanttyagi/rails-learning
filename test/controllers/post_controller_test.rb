require "test_helper"

class PostControllerTest < ActionDispatch::IntegrationTest
  test "should get first" do
    get post_first_url
    assert_response :success
  end

  test "should get second" do
    get post_second_url
    assert_response :success
  end

  test "should get third" do
    get post_third_url
    assert_response :success
  end
end
