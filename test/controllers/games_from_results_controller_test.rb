require 'test_helper'

class GamesFromResultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @games_from_result = games_from_results(:one)
  end

  test "should get index" do
    get games_from_results_url
    assert_response :success
  end

  test "should get new" do
    get new_games_from_result_url
    assert_response :success
  end

  test "should create games_from_result" do
    assert_difference('GamesFromResult.count') do
      post games_from_results_url, params: { games_from_result: {  } }
    end

    assert_redirected_to games_from_result_url(GamesFromResult.last)
  end

  test "should show games_from_result" do
    get games_from_result_url(@games_from_result)
    assert_response :success
  end

  test "should get edit" do
    get edit_games_from_result_url(@games_from_result)
    assert_response :success
  end

  test "should update games_from_result" do
    patch games_from_result_url(@games_from_result), params: { games_from_result: {  } }
    assert_redirected_to games_from_result_url(@games_from_result)
  end

  test "should destroy games_from_result" do
    assert_difference('GamesFromResult.count', -1) do
      delete games_from_result_url(@games_from_result)
    end

    assert_redirected_to games_from_results_url
  end
end
