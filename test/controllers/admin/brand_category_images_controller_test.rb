require "test_helper"

class Admin::BrandCategoryImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_brand_category_image = admin_brand_category_images(:one)
  end

  test "should get index" do
    get admin_brand_category_images_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_brand_category_image_url
    assert_response :success
  end

  test "should create admin_brand_category_image" do
    assert_difference("Admin::BrandCategoryImage.count") do
      post admin_brand_category_images_url, params: { admin_brand_category_image: {  } }
    end

    assert_redirected_to admin_brand_category_image_url(Admin::BrandCategoryImage.last)
  end

  test "should show admin_brand_category_image" do
    get admin_brand_category_image_url(@admin_brand_category_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_brand_category_image_url(@admin_brand_category_image)
    assert_response :success
  end

  test "should update admin_brand_category_image" do
    patch admin_brand_category_image_url(@admin_brand_category_image), params: { admin_brand_category_image: {  } }
    assert_redirected_to admin_brand_category_image_url(@admin_brand_category_image)
  end

  test "should destroy admin_brand_category_image" do
    assert_difference("Admin::BrandCategoryImage.count", -1) do
      delete admin_brand_category_image_url(@admin_brand_category_image)
    end

    assert_redirected_to admin_brand_category_images_url
  end
end
