require 'test_helper'

class ManuallyCreatedGamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manually_created_game = manually_created_games(:one)
  end

  test "should get index" do
    get manually_created_games_url
    assert_response :success
  end

  test "should get new" do
    get new_manually_created_game_url
    assert_response :success
  end

  test "should create manually_created_game" do
    assert_difference('ManuallyCreatedGame.count') do
      post manually_created_games_url, params: { manually_created_game: { game_id: @manually_created_game.game_id, image: @manually_created_game.image, released_date: @manually_created_game.released_date, system: @manually_created_game.system, title: @manually_created_game.title } }
    end

    assert_redirected_to manually_created_game_url(ManuallyCreatedGame.last)
  end

  test "should show manually_created_game" do
    get manually_created_game_url(@manually_created_game)
    assert_response :success
  end

  test "should get edit" do
    get edit_manually_created_game_url(@manually_created_game)
    assert_response :success
  end

  test "should update manually_created_game" do
    patch manually_created_game_url(@manually_created_game), params: { manually_created_game: { game_id: @manually_created_game.game_id, image: @manually_created_game.image, released_date: @manually_created_game.released_date, system: @manually_created_game.system, title: @manually_created_game.title } }
    assert_redirected_to manually_created_game_url(@manually_created_game)
  end

  test "should destroy manually_created_game" do
    assert_difference('ManuallyCreatedGame.count', -1) do
      delete manually_created_game_url(@manually_created_game)
    end

    assert_redirected_to manually_created_games_url
  end
end
