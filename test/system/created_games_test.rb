require "application_system_test_case"

class CreatedGamesTest < ApplicationSystemTestCase
  setup do
    @created_game = created_games(:one)
  end

  test "visiting the index" do
    visit created_games_url
    assert_selector "h1", text: "Created Games"
  end

  test "creating a Created game" do
    visit created_games_url
    click_on "New Created Game"

    fill_in "Game", with: @created_game.game_id
    fill_in "Image", with: @created_game.image
    fill_in "Released date", with: @created_game.released_date
    fill_in "System", with: @created_game.system
    fill_in "Title", with: @created_game.title
    click_on "Create Created game"

    assert_text "Created game was successfully created"
    click_on "Back"
  end

  test "updating a Created game" do
    visit created_games_url
    click_on "Edit", match: :first

    fill_in "Game", with: @created_game.game_id
    fill_in "Image", with: @created_game.image
    fill_in "Released date", with: @created_game.released_date
    fill_in "System", with: @created_game.system
    fill_in "Title", with: @created_game.title
    click_on "Update Created game"

    assert_text "Created game was successfully updated"
    click_on "Back"
  end

  test "destroying a Created game" do
    visit created_games_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Created game was successfully destroyed"
  end
end
