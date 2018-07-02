require "application_system_test_case"

class MetalsTest < ApplicationSystemTestCase
  setup do
    @metal = metals(:one)
  end

  test "visiting the index" do
    visit metals_url
    assert_selector "h1", text: "Metals"
  end

  test "creating a Metal" do
    visit metals_url
    click_on "New Metal"

    fill_in "Body", with: @metal.body
    fill_in "Title", with: @metal.title
    click_on "Create Metal"

    assert_text "Metal was successfully created"
    click_on "Back"
  end

  test "updating a Metal" do
    visit metals_url
    click_on "Edit", match: :first

    fill_in "Body", with: @metal.body
    fill_in "Title", with: @metal.title
    click_on "Update Metal"

    assert_text "Metal was successfully updated"
    click_on "Back"
  end

  test "destroying a Metal" do
    visit metals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Metal was successfully destroyed"
  end
end
