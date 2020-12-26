require "application_system_test_case"

class GamedbsTest < ApplicationSystemTestCase
  setup do
    @gamedb = gamedbs(:one)
  end

  test "visiting the index" do
    visit gamedbs_url
    assert_selector "h1", text: "Gamedbs"
  end

  test "creating a Gamedb" do
    visit gamedbs_url
    click_on "New Gamedb"

    fill_in "Password", with: @gamedb.password
    fill_in "Steamid", with: @gamedb.steamID
    fill_in "Username", with: @gamedb.username
    click_on "Create Gamedb"

    assert_text "Gamedb was successfully created"
    click_on "Back"
  end

  test "updating a Gamedb" do
    visit gamedbs_url
    click_on "Edit", match: :first

    fill_in "Password", with: @gamedb.password
    fill_in "Steamid", with: @gamedb.steamID
    fill_in "Username", with: @gamedb.username
    click_on "Update Gamedb"

    assert_text "Gamedb was successfully updated"
    click_on "Back"
  end

  test "destroying a Gamedb" do
    visit gamedbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gamedb was successfully destroyed"
  end
end
