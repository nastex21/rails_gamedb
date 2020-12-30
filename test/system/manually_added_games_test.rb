require "application_system_test_case"

class ManuallyAddedGamesTest < ApplicationSystemTestCase
  setup do
    @manually_added_game = manually_added_games(:one)
  end

  test "visiting the index" do
    visit manually_added_games_url
    assert_selector "h1", text: "Manually Added Games"
  end

  test "creating a Manually added game" do
    visit manually_added_games_url
    click_on "New Manually Added Game"

    fill_in "Title", with: @manually_added_game.title
    click_on "Create Manually added game"

    assert_text "Manually added game was successfully created"
    click_on "Back"
  end

  test "updating a Manually added game" do
    visit manually_added_games_url
    click_on "Edit", match: :first

    fill_in "Title", with: @manually_added_game.title
    click_on "Update Manually added game"

    assert_text "Manually added game was successfully updated"
    click_on "Back"
  end

  test "destroying a Manually added game" do
    visit manually_added_games_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Manually added game was successfully destroyed"
  end
end
