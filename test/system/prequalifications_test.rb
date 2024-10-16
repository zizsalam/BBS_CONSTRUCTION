require "application_system_test_case"

class PrequalificationsTest < ApplicationSystemTestCase
  setup do
    @prequalification = prequalifications(:one)
  end

  test "visiting the index" do
    visit prequalifications_url
    assert_selector "h1", text: "Prequalifications"
  end

  test "should create prequalification" do
    visit prequalifications_url
    click_on "New prequalification"

    fill_in "Prequalified budget", with: @prequalification.prequalified_budget
    click_on "Create Prequalification"

    assert_text "Prequalification was successfully created"
    click_on "Back"
  end

  test "should update Prequalification" do
    visit prequalification_url(@prequalification)
    click_on "Edit this prequalification", match: :first

    fill_in "Prequalified budget", with: @prequalification.prequalified_budget
    click_on "Update Prequalification"

    assert_text "Prequalification was successfully updated"
    click_on "Back"
  end

  test "should destroy Prequalification" do
    visit prequalification_url(@prequalification)
    click_on "Destroy this prequalification", match: :first

    assert_text "Prequalification was successfully destroyed"
  end
end
