require "test_helper"

class Admin::ClienteleImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_clientele_image = admin_clientele_images(:one)
  end

  test "should get index" do
    get admin_clientele_images_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_clientele_image_url
    assert_response :success
  end

  test "should create admin_clientele_image" do
    assert_difference("Admin::ClienteleImage.count") do
      post admin_clientele_images_url, params: { admin_clientele_image: {  } }
    end

    assert_redirected_to admin_clientele_image_url(Admin::ClienteleImage.last)
  end

  test "should show admin_clientele_image" do
    get admin_clientele_image_url(@admin_clientele_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_clientele_image_url(@admin_clientele_image)
    assert_response :success
  end

  test "should update admin_clientele_image" do
    patch admin_clientele_image_url(@admin_clientele_image), params: { admin_clientele_image: {  } }
    assert_redirected_to admin_clientele_image_url(@admin_clientele_image)
  end

  test "should destroy admin_clientele_image" do
    assert_difference("Admin::ClienteleImage.count", -1) do
      delete admin_clientele_image_url(@admin_clientele_image)
    end

    assert_redirected_to admin_clientele_images_url
  end
end
