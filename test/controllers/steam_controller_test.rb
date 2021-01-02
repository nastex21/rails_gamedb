require 'test_helper'

class SteamControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get steam_index_url
    assert_response :success
  end

end
