require "application_system_test_case"

class Admin::BrandCategoriesTest < ApplicationSystemTestCase
  setup do
    @admin_brand_category = admin_brand_categories(:one)
  end

  test "visiting the index" do
    visit admin_brand_categories_url
    assert_selector "h1", text: "Brand categories"
  end

  test "should create brand category" do
    visit admin_brand_categories_url
    click_on "New brand category"

    click_on "Create Brand category"

    assert_text "Brand category was successfully created"
    click_on "Back"
  end

  test "should update Brand category" do
    visit admin_brand_category_url(@admin_brand_category)
    click_on "Edit this brand category", match: :first

    click_on "Update Brand category"

    assert_text "Brand category was successfully updated"
    click_on "Back"
  end

  test "should destroy Brand category" do
    visit admin_brand_category_url(@admin_brand_category)
    click_on "Destroy this brand category", match: :first

    assert_text "Brand category was successfully destroyed"
  end
end
