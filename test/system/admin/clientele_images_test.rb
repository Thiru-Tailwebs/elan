require "application_system_test_case"

class Admin::ClienteleImagesTest < ApplicationSystemTestCase
  setup do
    @admin_clientele_image = admin_clientele_images(:one)
  end

  test "visiting the index" do
    visit admin_clientele_images_url
    assert_selector "h1", text: "Clientele images"
  end

  test "should create clientele image" do
    visit admin_clientele_images_url
    click_on "New clientele image"

    click_on "Create Clientele image"

    assert_text "Clientele image was successfully created"
    click_on "Back"
  end

  test "should update Clientele image" do
    visit admin_clientele_image_url(@admin_clientele_image)
    click_on "Edit this clientele image", match: :first

    click_on "Update Clientele image"

    assert_text "Clientele image was successfully updated"
    click_on "Back"
  end

  test "should destroy Clientele image" do
    visit admin_clientele_image_url(@admin_clientele_image)
    click_on "Destroy this clientele image", match: :first

    assert_text "Clientele image was successfully destroyed"
  end
end
