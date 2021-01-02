require "application_system_test_case"

class ManuallyCreatedGamesTest < ApplicationSystemTestCase
  setup do
    @manually_created_game = manually_created_games(:one)
  end

  test "visiting the index" do
    visit manually_created_games_url
    assert_selector "h1", text: "Manually Created Games"
  end

  test "creating a Manually created game" do
    visit manually_created_games_url
    click_on "New Manually Created Game"

    fill_in "Game", with: @manually_created_game.game_id
    fill_in "Image", with: @manually_created_game.image
    fill_in "Released date", with: @manually_created_game.released_date
    fill_in "System", with: @manually_created_game.system
    fill_in "Title", with: @manually_created_game.title
    click_on "Create Manually created game"

    assert_text "Manually created game was successfully created"
    click_on "Back"
  end

  test "updating a Manually created game" do
    visit manually_created_games_url
    click_on "Edit", match: :first

    fill_in "Game", with: @manually_created_game.game_id
    fill_in "Image", with: @manually_created_game.image
    fill_in "Released date", with: @manually_created_game.released_date
    fill_in "System", with: @manually_created_game.system
    fill_in "Title", with: @manually_created_game.title
    click_on "Update Manually created game"

    assert_text "Manually created game was successfully updated"
    click_on "Back"
  end

  test "destroying a Manually created game" do
    visit manually_created_games_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Manually created game was successfully destroyed"
  end
end
