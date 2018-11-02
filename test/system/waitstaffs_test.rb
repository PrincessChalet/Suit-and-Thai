require "application_system_test_case"

class WaitstaffsTest < ApplicationSystemTestCase
  setup do
    @waitstaff = waitstaffs(:one)
  end

  test "visiting the index" do
    visit waitstaffs_url
    assert_selector "h1", text: "Waitstaffs"
  end

  test "creating a Waitstaff" do
    visit waitstaffs_url
    click_on "New Waitstaff"

    fill_in "Customer Names", with: @waitstaff.customer_names
    fill_in "Tables", with: @waitstaff.tables
    fill_in "Waitstaff", with: @waitstaff.waitstaff_id
    fill_in "Waitstaff Name", with: @waitstaff.waitstaff_name
    click_on "Create Waitstaff"

    assert_text "Waitstaff was successfully created"
    click_on "Back"
  end

  test "updating a Waitstaff" do
    visit waitstaffs_url
    click_on "Edit", match: :first

    fill_in "Customer Names", with: @waitstaff.customer_names
    fill_in "Tables", with: @waitstaff.tables
    fill_in "Waitstaff", with: @waitstaff.waitstaff_id
    fill_in "Waitstaff Name", with: @waitstaff.waitstaff_name
    click_on "Update Waitstaff"

    assert_text "Waitstaff was successfully updated"
    click_on "Back"
  end

  test "destroying a Waitstaff" do
    visit waitstaffs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Waitstaff was successfully destroyed"
  end
end
