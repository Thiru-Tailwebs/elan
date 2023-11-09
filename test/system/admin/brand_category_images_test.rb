require "application_system_test_case"

class Admin::BrandCategoryImagesTest < ApplicationSystemTestCase
  setup do
    @admin_brand_category_image = admin_brand_category_images(:one)
  end

  test "visiting the index" do
    visit admin_brand_category_images_url
    assert_selector "h1", text: "Brand category images"
  end

  test "should create brand category image" do
    visit admin_brand_category_images_url
    click_on "New brand category image"

    click_on "Create Brand category image"

    assert_text "Brand category image was successfully created"
    click_on "Back"
  end

  test "should update Brand category image" do
    visit admin_brand_category_image_url(@admin_brand_category_image)
    click_on "Edit this brand category image", match: :first

    click_on "Update Brand category image"

    assert_text "Brand category image was successfully updated"
    click_on "Back"
  end

  test "should destroy Brand category image" do
    visit admin_brand_category_image_url(@admin_brand_category_image)
    click_on "Destroy this brand category image", match: :first

    assert_text "Brand category image was successfully destroyed"
  end
end
