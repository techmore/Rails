require "application_system_test_case"

class LedgersTest < ApplicationSystemTestCase
  setup do
    @ledger = ledgers(:one)
  end

  test "visiting the index" do
    visit ledgers_url
    assert_selector "h1", text: "Ledgers"
  end

  test "creating a Ledger" do
    visit ledgers_url
    click_on "New Ledger"

    fill_in "Amount", with: @ledger.amount
    fill_in "Check Details", with: @ledger.check_details
    fill_in "Cobra", with: @ledger.cobra
    fill_in "Date", with: @ledger.date
    fill_in "Department", with: @ledger.department
    fill_in "Notes", with: @ledger.notes
    fill_in "Payer", with: @ledger.payer
    click_on "Create Ledger"

    assert_text "Ledger was successfully created"
    click_on "Back"
  end

  test "updating a Ledger" do
    visit ledgers_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @ledger.amount
    fill_in "Check Details", with: @ledger.check_details
    fill_in "Cobra", with: @ledger.cobra
    fill_in "Date", with: @ledger.date
    fill_in "Department", with: @ledger.department
    fill_in "Notes", with: @ledger.notes
    fill_in "Payer", with: @ledger.payer
    click_on "Update Ledger"

    assert_text "Ledger was successfully updated"
    click_on "Back"
  end

  test "destroying a Ledger" do
    visit ledgers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ledger was successfully destroyed"
  end
end
