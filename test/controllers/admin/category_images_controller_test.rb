require "test_helper"

class Admin::CategoryImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_category_image = admin_category_images(:one)
  end

  test "should get index" do
    get admin_category_images_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_category_image_url
    assert_response :success
  end

  test "should create admin_category_image" do
    assert_difference("Admin::CategoryImage.count") do
      post admin_category_images_url, params: { admin_category_image: {  } }
    end

    assert_redirected_to admin_category_image_url(Admin::CategoryImage.last)
  end

  test "should show admin_category_image" do
    get admin_category_image_url(@admin_category_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_category_image_url(@admin_category_image)
    assert_response :success
  end

  test "should update admin_category_image" do
    patch admin_category_image_url(@admin_category_image), params: { admin_category_image: {  } }
    assert_redirected_to admin_category_image_url(@admin_category_image)
  end

  test "should destroy admin_category_image" do
    assert_difference("Admin::CategoryImage.count", -1) do
      delete admin_category_image_url(@admin_category_image)
    end

    assert_redirected_to admin_category_images_url
  end
end
