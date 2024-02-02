require "application_system_test_case"

class Admin::BookServicesTest < ApplicationSystemTestCase
  setup do
    @admin_book_service = admin_book_services(:one)
  end

  test "visiting the index" do
    visit admin_book_services_url
    assert_selector "h1", text: "Book services"
  end

  test "should create book service" do
    visit admin_book_services_url
    click_on "New book service"

    click_on "Create Book service"

    assert_text "Book service was successfully created"
    click_on "Back"
  end

  test "should update Book service" do
    visit admin_book_service_url(@admin_book_service)
    click_on "Edit this book service", match: :first

    click_on "Update Book service"

    assert_text "Book service was successfully updated"
    click_on "Back"
  end

  test "should destroy Book service" do
    visit admin_book_service_url(@admin_book_service)
    click_on "Destroy this book service", match: :first

    assert_text "Book service was successfully destroyed"
  end
end
