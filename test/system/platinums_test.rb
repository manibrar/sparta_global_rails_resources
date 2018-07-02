require "application_system_test_case"

class PlatinumsTest < ApplicationSystemTestCase
  setup do
    @platinum = platinums(:one)
  end

  test "visiting the index" do
    visit platinums_url
    assert_selector "h1", text: "Platinums"
  end

  test "creating a Platinum" do
    visit platinums_url
    click_on "New Platinum"

    fill_in "Body", with: @platinum.body
    fill_in "Title", with: @platinum.title
    click_on "Create Platinum"

    assert_text "Platinum was successfully created"
    click_on "Back"
  end

  test "updating a Platinum" do
    visit platinums_url
    click_on "Edit", match: :first

    fill_in "Body", with: @platinum.body
    fill_in "Title", with: @platinum.title
    click_on "Update Platinum"

    assert_text "Platinum was successfully updated"
    click_on "Back"
  end

  test "destroying a Platinum" do
    visit platinums_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Platinum was successfully destroyed"
  end
end
