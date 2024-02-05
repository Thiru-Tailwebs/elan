require "application_system_test_case"

class Admin::DesignServicesTest < ApplicationSystemTestCase
  setup do
    @admin_design_service = admin_design_services(:one)
  end

  test "visiting the index" do
    visit admin_design_services_url
    assert_selector "h1", text: "Design services"
  end

  test "should create design service" do
    visit admin_design_services_url
    click_on "New design service"

    click_on "Create Design service"

    assert_text "Design service was successfully created"
    click_on "Back"
  end

  test "should update Design service" do
    visit admin_design_service_url(@admin_design_service)
    click_on "Edit this design service", match: :first

    click_on "Update Design service"

    assert_text "Design service was successfully updated"
    click_on "Back"
  end

  test "should destroy Design service" do
    visit admin_design_service_url(@admin_design_service)
    click_on "Destroy this design service", match: :first

    assert_text "Design service was successfully destroyed"
  end
end
