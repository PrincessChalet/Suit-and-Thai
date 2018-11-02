require "application_system_test_case"

class KitchenStaffsTest < ApplicationSystemTestCase
  setup do
    @kitchen_staff = kitchen_staffs(:one)
  end

  test "visiting the index" do
    visit kitchen_staffs_url
    assert_selector "h1", text: "Kitchen Staffs"
  end

  test "creating a Kitchen staff" do
    visit kitchen_staffs_url
    click_on "New Kitchen Staff"

    fill_in "Chef Name", with: @kitchen_staff.chef_name
    click_on "Create Kitchen staff"

    assert_text "Kitchen staff was successfully created"
    click_on "Back"
  end

  test "updating a Kitchen staff" do
    visit kitchen_staffs_url
    click_on "Edit", match: :first

    fill_in "Chef Name", with: @kitchen_staff.chef_name
    click_on "Update Kitchen staff"

    assert_text "Kitchen staff was successfully updated"
    click_on "Back"
  end

  test "destroying a Kitchen staff" do
    visit kitchen_staffs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kitchen staff was successfully destroyed"
  end
end
