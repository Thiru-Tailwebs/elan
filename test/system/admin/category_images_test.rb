require "application_system_test_case"

class Admin::CategoryImagesTest < ApplicationSystemTestCase
  setup do
    @admin_category_image = admin_category_images(:one)
  end

  test "visiting the index" do
    visit admin_category_images_url
    assert_selector "h1", text: "Category images"
  end

  test "should create category image" do
    visit admin_category_images_url
    click_on "New category image"

    click_on "Create Category image"

    assert_text "Category image was successfully created"
    click_on "Back"
  end

  test "should update Category image" do
    visit admin_category_image_url(@admin_category_image)
    click_on "Edit this category image", match: :first

    click_on "Update Category image"

    assert_text "Category image was successfully updated"
    click_on "Back"
  end

  test "should destroy Category image" do
    visit admin_category_image_url(@admin_category_image)
    click_on "Destroy this category image", match: :first

    assert_text "Category image was successfully destroyed"
  end
end
