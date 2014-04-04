require 'test_helper'

class KeytweetsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get fetcher" do
    get :fetcher
    assert_response :success
  end

end
