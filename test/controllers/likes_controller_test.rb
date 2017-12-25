require 'test_helper'

class LikesControllerTest < ActionDispatch::IntegrationTest
  test "should get craete" do
    get likes_craete_url
    assert_response :success
  end

  test "should get destroy" do
    get likes_destroy_url
    assert_response :success
  end

end
