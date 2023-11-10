require "test_helper"

class Admin::BlogTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_blog_type = admin_blog_types(:one)
  end

  test "should get index" do
    get admin_blog_types_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_blog_type_url
    assert_response :success
  end

  test "should create admin_blog_type" do
    assert_difference("Admin::BlogType.count") do
      post admin_blog_types_url, params: { admin_blog_type: {  } }
    end

    assert_redirected_to admin_blog_type_url(Admin::BlogType.last)
  end

  test "should show admin_blog_type" do
    get admin_blog_type_url(@admin_blog_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_blog_type_url(@admin_blog_type)
    assert_response :success
  end

  test "should update admin_blog_type" do
    patch admin_blog_type_url(@admin_blog_type), params: { admin_blog_type: {  } }
    assert_redirected_to admin_blog_type_url(@admin_blog_type)
  end

  test "should destroy admin_blog_type" do
    assert_difference("Admin::BlogType.count", -1) do
      delete admin_blog_type_url(@admin_blog_type)
    end

    assert_redirected_to admin_blog_types_url
  end
end
