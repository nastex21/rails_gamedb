require "application_system_test_case"

class SteamGamesTest < ApplicationSystemTestCase
  setup do
    @steam_game = steam_games(:one)
  end

  test "visiting the index" do
    visit steam_games_url
    assert_selector "h1", text: "Steam Games"
  end

  test "creating a Steam game" do
    visit steam_games_url
    click_on "New Steam Game"

    fill_in "Title", with: @steam_game.title
    click_on "Create Steam game"

    assert_text "Steam game was successfully created"
    click_on "Back"
  end

  test "updating a Steam game" do
    visit steam_games_url
    click_on "Edit", match: :first

    fill_in "Title", with: @steam_game.title
    click_on "Update Steam game"

    assert_text "Steam game was successfully updated"
    click_on "Back"
  end

  test "destroying a Steam game" do
    visit steam_games_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Steam game was successfully destroyed"
  end
end
