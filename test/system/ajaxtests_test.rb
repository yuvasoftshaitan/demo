require "application_system_test_case"

class AjaxtestsTest < ApplicationSystemTestCase
  setup do
    @ajaxtest = ajaxtests(:one)
  end

  test "visiting the index" do
    visit ajaxtests_url
    assert_selector "h1", text: "Ajaxtests"
  end

  test "creating a Ajaxtest" do
    visit ajaxtests_url
    click_on "New Ajaxtest"

    fill_in "Mobile", with: @ajaxtest.mobile
    fill_in "Name", with: @ajaxtest.name
    click_on "Create Ajaxtest"

    assert_text "Ajaxtest was successfully created"
    click_on "Back"
  end

  test "updating a Ajaxtest" do
    visit ajaxtests_url
    click_on "Edit", match: :first

    fill_in "Mobile", with: @ajaxtest.mobile
    fill_in "Name", with: @ajaxtest.name
    click_on "Update Ajaxtest"

    assert_text "Ajaxtest was successfully updated"
    click_on "Back"
  end

  test "destroying a Ajaxtest" do
    visit ajaxtests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ajaxtest was successfully destroyed"
  end
end
