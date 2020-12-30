require 'test_helper'

class ManuallyAddedGamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manually_added_game = manually_added_games(:one)
  end

  test "should get index" do
    get manually_added_games_url
    assert_response :success
  end

  test "should get new" do
    get new_manually_added_game_url
    assert_response :success
  end

  test "should create manually_added_game" do
    assert_difference('ManuallyAddedGame.count') do
      post manually_added_games_url, params: { manually_added_game: { title: @manually_added_game.title } }
    end

    assert_redirected_to manually_added_game_url(ManuallyAddedGame.last)
  end

  test "should show manually_added_game" do
    get manually_added_game_url(@manually_added_game)
    assert_response :success
  end

  test "should get edit" do
    get edit_manually_added_game_url(@manually_added_game)
    assert_response :success
  end

  test "should update manually_added_game" do
    patch manually_added_game_url(@manually_added_game), params: { manually_added_game: { title: @manually_added_game.title } }
    assert_redirected_to manually_added_game_url(@manually_added_game)
  end

  test "should destroy manually_added_game" do
    assert_difference('ManuallyAddedGame.count', -1) do
      delete manually_added_game_url(@manually_added_game)
    end

    assert_redirected_to manually_added_games_url
  end
end
