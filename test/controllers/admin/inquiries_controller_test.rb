require "test_helper"

class Admin::InquiriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_inquiry = admin_inquiries(:one)
  end

  test "should get index" do
    get admin_inquiries_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_inquiry_url
    assert_response :success
  end

  test "should create admin_inquiry" do
    assert_difference("Admin::Inquiry.count") do
      post admin_inquiries_url, params: { admin_inquiry: {  } }
    end

    assert_redirected_to admin_inquiry_url(Admin::Inquiry.last)
  end

  test "should show admin_inquiry" do
    get admin_inquiry_url(@admin_inquiry)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_inquiry_url(@admin_inquiry)
    assert_response :success
  end

  test "should update admin_inquiry" do
    patch admin_inquiry_url(@admin_inquiry), params: { admin_inquiry: {  } }
    assert_redirected_to admin_inquiry_url(@admin_inquiry)
  end

  test "should destroy admin_inquiry" do
    assert_difference("Admin::Inquiry.count", -1) do
      delete admin_inquiry_url(@admin_inquiry)
    end

    assert_redirected_to admin_inquiries_url
  end
end
