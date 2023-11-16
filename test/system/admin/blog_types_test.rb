require "application_system_test_case"

class Admin::BlogTypesTest < ApplicationSystemTestCase
  setup do
    @admin_blog_type = admin_blog_types(:one)
  end

  test "visiting the index" do
    visit admin_blog_types_url
    assert_selector "h1", text: "Blog types"
  end

  test "should create blog type" do
    visit admin_blog_types_url
    click_on "New blog type"

    click_on "Create Blog type"

    assert_text "Blog type was successfully created"
    click_on "Back"
  end

  test "should update Blog type" do
    visit admin_blog_type_url(@admin_blog_type)
    click_on "Edit this blog type", match: :first

    click_on "Update Blog type"

    assert_text "Blog type was successfully updated"
    click_on "Back"
  end

  test "should destroy Blog type" do
    visit admin_blog_type_url(@admin_blog_type)
    click_on "Destroy this blog type", match: :first

    assert_text "Blog type was successfully destroyed"
  end
end
