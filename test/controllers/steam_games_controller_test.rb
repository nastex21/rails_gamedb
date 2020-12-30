require 'test_helper'

class SteamGamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @steam_game = steam_games(:one)
  end

  test "should get index" do
    get steam_games_url
    assert_response :success
  end

  test "should get new" do
    get new_steam_game_url
    assert_response :success
  end

  test "should create steam_game" do
    assert_difference('SteamGame.count') do
      post steam_games_url, params: { steam_game: { title: @steam_game.title } }
    end

    assert_redirected_to steam_game_url(SteamGame.last)
  end

  test "should show steam_game" do
    get steam_game_url(@steam_game)
    assert_response :success
  end

  test "should get edit" do
    get edit_steam_game_url(@steam_game)
    assert_response :success
  end

  test "should update steam_game" do
    patch steam_game_url(@steam_game), params: { steam_game: { title: @steam_game.title } }
    assert_redirected_to steam_game_url(@steam_game)
  end

  test "should destroy steam_game" do
    assert_difference('SteamGame.count', -1) do
      delete steam_game_url(@steam_game)
    end

    assert_redirected_to steam_games_url
  end
end
