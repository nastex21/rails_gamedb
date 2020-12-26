require 'test_helper'

class GamedbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gamedb = gamedbs(:one)
  end

  test "should get index" do
    get gamedbs_url
    assert_response :success
  end

  test "should get new" do
    get new_gamedb_url
    assert_response :success
  end

  test "should create gamedb" do
    assert_difference('Gamedb.count') do
      post gamedbs_url, params: { gamedb: { password: @gamedb.password, steamID: @gamedb.steamID, username: @gamedb.username } }
    end

    assert_redirected_to gamedb_url(Gamedb.last)
  end

  test "should show gamedb" do
    get gamedb_url(@gamedb)
    assert_response :success
  end

  test "should get edit" do
    get edit_gamedb_url(@gamedb)
    assert_response :success
  end

  test "should update gamedb" do
    patch gamedb_url(@gamedb), params: { gamedb: { password: @gamedb.password, steamID: @gamedb.steamID, username: @gamedb.username } }
    assert_redirected_to gamedb_url(@gamedb)
  end

  test "should destroy gamedb" do
    assert_difference('Gamedb.count', -1) do
      delete gamedb_url(@gamedb)
    end

    assert_redirected_to gamedbs_url
  end
end
