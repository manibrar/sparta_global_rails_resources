require "application_system_test_case"

class SilversTest < ApplicationSystemTestCase
  setup do
    @silver = silvers(:one)
  end

  test "visiting the index" do
    visit silvers_url
    assert_selector "h1", text: "Silvers"
  end

  test "creating a Silver" do
    visit silvers_url
    click_on "New Silver"

    fill_in "Body", with: @silver.body
    fill_in "Title", with: @silver.title
    click_on "Create Silver"

    assert_text "Silver was successfully created"
    click_on "Back"
  end

  test "updating a Silver" do
    visit silvers_url
    click_on "Edit", match: :first

    fill_in "Body", with: @silver.body
    fill_in "Title", with: @silver.title
    click_on "Update Silver"

    assert_text "Silver was successfully updated"
    click_on "Back"
  end

  test "destroying a Silver" do
    visit silvers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Silver was successfully destroyed"
  end
end
