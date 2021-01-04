require 'test_helper'

class CreatedGamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @created_game = created_games(:one)
  end

  test "should get index" do
    get created_games_url
    assert_response :success
  end

  test "should get new" do
    get new_created_game_url
    assert_response :success
  end

  test "should create created_game" do
    assert_difference('CreatedGame.count') do
      post created_games_url, params: { created_game: { game_id: @created_game.game_id, image: @created_game.image, released_date: @created_game.released_date, system: @created_game.system, title: @created_game.title } }
    end

    assert_redirected_to created_game_url(CreatedGame.last)
  end

  test "should show created_game" do
    get created_game_url(@created_game)
    assert_response :success
  end

  test "should get edit" do
    get edit_created_game_url(@created_game)
    assert_response :success
  end

  test "should update created_game" do
    patch created_game_url(@created_game), params: { created_game: { game_id: @created_game.game_id, image: @created_game.image, released_date: @created_game.released_date, system: @created_game.system, title: @created_game.title } }
    assert_redirected_to created_game_url(@created_game)
  end

  test "should destroy created_game" do
    assert_difference('CreatedGame.count', -1) do
      delete created_game_url(@created_game)
    end

    assert_redirected_to created_games_url
  end
end
