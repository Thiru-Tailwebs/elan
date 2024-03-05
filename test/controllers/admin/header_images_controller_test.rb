require "test_helper"

class Admin::HeaderImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_header_image = admin_header_images(:one)
  end

  test "should get index" do
    get admin_header_images_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_header_image_url
    assert_response :success
  end

  test "should create admin_header_image" do
    assert_difference("Admin::HeaderImage.count") do
      post admin_header_images_url, params: { admin_header_image: {  } }
    end

    assert_redirected_to admin_header_image_url(Admin::HeaderImage.last)
  end

  test "should show admin_header_image" do
    get admin_header_image_url(@admin_header_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_header_image_url(@admin_header_image)
    assert_response :success
  end

  test "should update admin_header_image" do
    patch admin_header_image_url(@admin_header_image), params: { admin_header_image: {  } }
    assert_redirected_to admin_header_image_url(@admin_header_image)
  end

  test "should destroy admin_header_image" do
    assert_difference("Admin::HeaderImage.count", -1) do
      delete admin_header_image_url(@admin_header_image)
    end

    assert_redirected_to admin_header_images_url
  end
end
