require "application_system_test_case"

class GamesFromResultsTest < ApplicationSystemTestCase
  setup do
    @games_from_result = games_from_results(:one)
  end

  test "visiting the index" do
    visit games_from_results_url
    assert_selector "h1", text: "Games From Results"
  end

  test "creating a Games from result" do
    visit games_from_results_url
    click_on "New Games From Result"

    click_on "Create Games from result"

    assert_text "Games from result was successfully created"
    click_on "Back"
  end

  test "updating a Games from result" do
    visit games_from_results_url
    click_on "Edit", match: :first

    click_on "Update Games from result"

    assert_text "Games from result was successfully updated"
    click_on "Back"
  end

  test "destroying a Games from result" do
    visit games_from_results_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Games from result was successfully destroyed"
  end
end
