require 'test_helper'

class InsertedGamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inserted_game = inserted_games(:one)
  end

  test "should get index" do
    get inserted_games_url
    assert_response :success
  end

  test "should get new" do
    get new_inserted_game_url
    assert_response :success
  end

  test "should create inserted_game" do
    assert_difference('InsertedGame.count') do
      post inserted_games_url, params: { inserted_game: {  } }
    end

    assert_redirected_to inserted_game_url(InsertedGame.last)
  end

  test "should show inserted_game" do
    get inserted_game_url(@inserted_game)
    assert_response :success
  end

  test "should get edit" do
    get edit_inserted_game_url(@inserted_game)
    assert_response :success
  end

  test "should update inserted_game" do
    patch inserted_game_url(@inserted_game), params: { inserted_game: {  } }
    assert_redirected_to inserted_game_url(@inserted_game)
  end

  test "should destroy inserted_game" do
    assert_difference('InsertedGame.count', -1) do
      delete inserted_game_url(@inserted_game)
    end

    assert_redirected_to inserted_games_url
  end
end
