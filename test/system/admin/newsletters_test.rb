require "application_system_test_case"

class Admin::NewslettersTest < ApplicationSystemTestCase
  setup do
    @admin_newsletter = admin_newsletters(:one)
  end

  test "visiting the index" do
    visit admin_newsletters_url
    assert_selector "h1", text: "Newsletters"
  end

  test "should create newsletter" do
    visit admin_newsletters_url
    click_on "New newsletter"

    click_on "Create Newsletter"

    assert_text "Newsletter was successfully created"
    click_on "Back"
  end

  test "should update Newsletter" do
    visit admin_newsletter_url(@admin_newsletter)
    click_on "Edit this newsletter", match: :first

    click_on "Update Newsletter"

    assert_text "Newsletter was successfully updated"
    click_on "Back"
  end

  test "should destroy Newsletter" do
    visit admin_newsletter_url(@admin_newsletter)
    click_on "Destroy this newsletter", match: :first

    assert_text "Newsletter was successfully destroyed"
  end
end
