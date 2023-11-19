require "application_system_test_case"

class Admin::InquiriesTest < ApplicationSystemTestCase
  setup do
    @admin_inquiry = admin_inquiries(:one)
  end

  test "visiting the index" do
    visit admin_inquiries_url
    assert_selector "h1", text: "Inquiries"
  end

  test "should create inquiry" do
    visit admin_inquiries_url
    click_on "New inquiry"

    click_on "Create Inquiry"

    assert_text "Inquiry was successfully created"
    click_on "Back"
  end

  test "should update Inquiry" do
    visit admin_inquiry_url(@admin_inquiry)
    click_on "Edit this inquiry", match: :first

    click_on "Update Inquiry"

    assert_text "Inquiry was successfully updated"
    click_on "Back"
  end

  test "should destroy Inquiry" do
    visit admin_inquiry_url(@admin_inquiry)
    click_on "Destroy this inquiry", match: :first

    assert_text "Inquiry was successfully destroyed"
  end
end
