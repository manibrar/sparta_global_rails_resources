require "application_system_test_case"

class CoppersTest < ApplicationSystemTestCase
  setup do
    @copper = coppers(:one)
  end

  test "visiting the index" do
    visit coppers_url
    assert_selector "h1", text: "Coppers"
  end

  test "creating a Copper" do
    visit coppers_url
    click_on "New Copper"

    fill_in "Body", with: @copper.body
    fill_in "Title", with: @copper.title
    click_on "Create Copper"

    assert_text "Copper was successfully created"
    click_on "Back"
  end

  test "updating a Copper" do
    visit coppers_url
    click_on "Edit", match: :first

    fill_in "Body", with: @copper.body
    fill_in "Title", with: @copper.title
    click_on "Update Copper"

    assert_text "Copper was successfully updated"
    click_on "Back"
  end

  test "destroying a Copper" do
    visit coppers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Copper was successfully destroyed"
  end
end
