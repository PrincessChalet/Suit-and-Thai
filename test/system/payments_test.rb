require "application_system_test_case"

class PaymentsTest < ApplicationSystemTestCase
  setup do
    @payment = payments(:one)
  end

  test "visiting the index" do
    visit payments_url
    assert_selector "h1", text: "Payments"
  end

  test "creating a Payment" do
    visit payments_url
    click_on "New Payment"

    fill_in "Cash Amt", with: @payment.cash_amt
    fill_in "Cc Num", with: @payment.cc_num
    fill_in "Tip", with: @payment.tip
    fill_in "Total", with: @payment.total
    click_on "Create Payment"

    assert_text "Payment was successfully created"
    click_on "Back"
  end

  test "updating a Payment" do
    visit payments_url
    click_on "Edit", match: :first

    fill_in "Cash Amt", with: @payment.cash_amt
    fill_in "Cc Num", with: @payment.cc_num
    fill_in "Tip", with: @payment.tip
    fill_in "Total", with: @payment.total
    click_on "Update Payment"

    assert_text "Payment was successfully updated"
    click_on "Back"
  end

  test "destroying a Payment" do
    visit payments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Payment was successfully destroyed"
  end
end
