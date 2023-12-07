require "test_helper"

class Admin::ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_contact = admin_contacts(:one)
  end

  test "should get index" do
    get admin_contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_contact_url
    assert_response :success
  end

  test "should create admin_contact" do
    assert_difference("Admin::Contact.count") do
      post admin_contacts_url, params: { admin_contact: {  } }
    end

    assert_redirected_to admin_contact_url(Admin::Contact.last)
  end

  test "should show admin_contact" do
    get admin_contact_url(@admin_contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_contact_url(@admin_contact)
    assert_response :success
  end

  test "should update admin_contact" do
    patch admin_contact_url(@admin_contact), params: { admin_contact: {  } }
    assert_redirected_to admin_contact_url(@admin_contact)
  end

  test "should destroy admin_contact" do
    assert_difference("Admin::Contact.count", -1) do
      delete admin_contact_url(@admin_contact)
    end

    assert_redirected_to admin_contacts_url
  end
end
