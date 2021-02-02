require "application_system_test_case"

class InsertedGamesTest < ApplicationSystemTestCase
  setup do
    @inserted_game = inserted_games(:one)
  end

  test "visiting the index" do
    visit inserted_games_url
    assert_selector "h1", text: "Inserted Games"
  end

  test "creating a Inserted game" do
    visit inserted_games_url
    click_on "New Inserted Game"

    click_on "Create Inserted game"

    assert_text "Inserted game was successfully created"
    click_on "Back"
  end

  test "updating a Inserted game" do
    visit inserted_games_url
    click_on "Edit", match: :first

    click_on "Update Inserted game"

    assert_text "Inserted game was successfully updated"
    click_on "Back"
  end

  test "destroying a Inserted game" do
    visit inserted_games_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inserted game was successfully destroyed"
  end
end
