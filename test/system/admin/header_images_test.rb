require "application_system_test_case"

class Admin::HeaderImagesTest < ApplicationSystemTestCase
  setup do
    @admin_header_image = admin_header_images(:one)
  end

  test "visiting the index" do
    visit admin_header_images_url
    assert_selector "h1", text: "Header images"
  end

  test "should create header image" do
    visit admin_header_images_url
    click_on "New header image"

    click_on "Create Header image"

    assert_text "Header image was successfully created"
    click_on "Back"
  end

  test "should update Header image" do
    visit admin_header_image_url(@admin_header_image)
    click_on "Edit this header image", match: :first

    click_on "Update Header image"

    assert_text "Header image was successfully updated"
    click_on "Back"
  end

  test "should destroy Header image" do
    visit admin_header_image_url(@admin_header_image)
    click_on "Destroy this header image", match: :first

    assert_text "Header image was successfully destroyed"
  end
end
