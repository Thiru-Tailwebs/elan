require "application_system_test_case"

class Admin::ContactsTest < ApplicationSystemTestCase
  setup do
    @admin_contact = admin_contacts(:one)
  end

  test "visiting the index" do
    visit admin_contacts_url
    assert_selector "h1", text: "Contacts"
  end

  test "should create contact" do
    visit admin_contacts_url
    click_on "New contact"

    click_on "Create Contact"

    assert_text "Contact was successfully created"
    click_on "Back"
  end

  test "should update Contact" do
    visit admin_contact_url(@admin_contact)
    click_on "Edit this contact", match: :first

    click_on "Update Contact"

    assert_text "Contact was successfully updated"
    click_on "Back"
  end

  test "should destroy Contact" do
    visit admin_contact_url(@admin_contact)
    click_on "Destroy this contact", match: :first

    assert_text "Contact was successfully destroyed"
  end
end
