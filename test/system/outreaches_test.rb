require "application_system_test_case"

class OutreachesTest < ApplicationSystemTestCase
  setup do
    @outreach = outreaches(:one)
  end

  test "visiting the index" do
    visit outreaches_url
    assert_selector "h1", text: "Outreaches"
  end

  test "creating a Outreach" do
    visit outreaches_url
    click_on "New Outreach"

    fill_in "Assessment", with: @outreach.assessment
    fill_in "Data", with: @outreach.data
    fill_in "Date", with: @outreach.date
    fill_in "Goal", with: @outreach.goal
    fill_in "Hour", with: @outreach.hour
    fill_in "Job Coach", with: @outreach.job_coach
    fill_in "Location", with: @outreach.location
    fill_in "Person Served", with: @outreach.person_served
    fill_in "Progress", with: @outreach.progress
    click_on "Create Outreach"

    assert_text "Outreach was successfully created"
    click_on "Back"
  end

  test "updating a Outreach" do
    visit outreaches_url
    click_on "Edit", match: :first

    fill_in "Assessment", with: @outreach.assessment
    fill_in "Data", with: @outreach.data
    fill_in "Date", with: @outreach.date
    fill_in "Goal", with: @outreach.goal
    fill_in "Hour", with: @outreach.hour
    fill_in "Job Coach", with: @outreach.job_coach
    fill_in "Location", with: @outreach.location
    fill_in "Person Served", with: @outreach.person_served
    fill_in "Progress", with: @outreach.progress
    click_on "Update Outreach"

    assert_text "Outreach was successfully updated"
    click_on "Back"
  end

  test "destroying a Outreach" do
    visit outreaches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Outreach was successfully destroyed"
  end
end
