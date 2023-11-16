require "test_helper"

class Admin::BrandCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_brand_category = admin_brand_categories(:one)
  end

  test "should get index" do
    get admin_brand_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_brand_category_url
    assert_response :success
  end

  test "should create admin_brand_category" do
    assert_difference("Admin::BrandCategory.count") do
      post admin_brand_categories_url, params: { admin_brand_category: {  } }
    end

    assert_redirected_to admin_brand_category_url(Admin::BrandCategory.last)
  end

  test "should show admin_brand_category" do
    get admin_brand_category_url(@admin_brand_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_brand_category_url(@admin_brand_category)
    assert_response :success
  end

  test "should update admin_brand_category" do
    patch admin_brand_category_url(@admin_brand_category), params: { admin_brand_category: {  } }
    assert_redirected_to admin_brand_category_url(@admin_brand_category)
  end

  test "should destroy admin_brand_category" do
    assert_difference("Admin::BrandCategory.count", -1) do
      delete admin_brand_category_url(@admin_brand_category)
    end

    assert_redirected_to admin_brand_categories_url
  end
end
