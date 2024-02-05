require "test_helper"

class Admin::VendorRegistrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_vendor_registration = admin_vendor_registrations(:one)
  end

  test "should get index" do
    get admin_vendor_registrations_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_vendor_registration_url
    assert_response :success
  end

  test "should create admin_vendor_registration" do
    assert_difference("Admin::VendorRegistration.count") do
      post admin_vendor_registrations_url, params: { admin_vendor_registration: {  } }
    end

    assert_redirected_to admin_vendor_registration_url(Admin::VendorRegistration.last)
  end

  test "should show admin_vendor_registration" do
    get admin_vendor_registration_url(@admin_vendor_registration)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_vendor_registration_url(@admin_vendor_registration)
    assert_response :success
  end

  test "should update admin_vendor_registration" do
    patch admin_vendor_registration_url(@admin_vendor_registration), params: { admin_vendor_registration: {  } }
    assert_redirected_to admin_vendor_registration_url(@admin_vendor_registration)
  end

  test "should destroy admin_vendor_registration" do
    assert_difference("Admin::VendorRegistration.count", -1) do
      delete admin_vendor_registration_url(@admin_vendor_registration)
    end

    assert_redirected_to admin_vendor_registrations_url
  end
end
