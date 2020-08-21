require "application_system_test_case"

class PartnershipsTest < ApplicationSystemTestCase
  setup do
    @partnership = partnerships(:one)
  end

  test "visiting the index" do
    visit partnerships_url
    assert_selector "h1", text: "Partnerships"
  end

  test "creating a Partnership" do
    visit partnerships_url
    click_on "New Partnership"

    fill_in "Email", with: @partnership.email
    fill_in "First name", with: @partnership.first_name
    fill_in "Last name", with: @partnership.last_name
    fill_in "Phone", with: @partnership.phone
    click_on "Create Partnership"

    assert_text "Partnership was successfully created"
    click_on "Back"
  end

  test "updating a Partnership" do
    visit partnerships_url
    click_on "Edit", match: :first

    fill_in "Email", with: @partnership.email
    fill_in "First name", with: @partnership.first_name
    fill_in "Last name", with: @partnership.last_name
    fill_in "Phone", with: @partnership.phone
    click_on "Update Partnership"

    assert_text "Partnership was successfully updated"
    click_on "Back"
  end

  test "destroying a Partnership" do
    visit partnerships_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Partnership was successfully destroyed"
  end
end
