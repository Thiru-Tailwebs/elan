require "application_system_test_case"

class Admin::VendorRegistrationsTest < ApplicationSystemTestCase
  setup do
    @admin_vendor_registration = admin_vendor_registrations(:one)
  end

  test "visiting the index" do
    visit admin_vendor_registrations_url
    assert_selector "h1", text: "Vendor registrations"
  end

  test "should create vendor registration" do
    visit admin_vendor_registrations_url
    click_on "New vendor registration"

    click_on "Create Vendor registration"

    assert_text "Vendor registration was successfully created"
    click_on "Back"
  end

  test "should update Vendor registration" do
    visit admin_vendor_registration_url(@admin_vendor_registration)
    click_on "Edit this vendor registration", match: :first

    click_on "Update Vendor registration"

    assert_text "Vendor registration was successfully updated"
    click_on "Back"
  end

  test "should destroy Vendor registration" do
    visit admin_vendor_registration_url(@admin_vendor_registration)
    click_on "Destroy this vendor registration", match: :first

    assert_text "Vendor registration was successfully destroyed"
  end
end
