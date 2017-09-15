require 'test_helper'

class UrlsControllerTest < ActionController::TestCase
  test "should get add_url" do
    get :add_url
    assert_response :success
  end

end
