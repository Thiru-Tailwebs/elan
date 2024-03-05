require "test_helper"

class Admin::BookServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_book_service = admin_book_services(:one)
  end

  test "should get index" do
    get admin_book_services_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_book_service_url
    assert_response :success
  end

  test "should create admin_book_service" do
    assert_difference("Admin::BookService.count") do
      post admin_book_services_url, params: { admin_book_service: {  } }
    end

    assert_redirected_to admin_book_service_url(Admin::BookService.last)
  end

  test "should show admin_book_service" do
    get admin_book_service_url(@admin_book_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_book_service_url(@admin_book_service)
    assert_response :success
  end

  test "should update admin_book_service" do
    patch admin_book_service_url(@admin_book_service), params: { admin_book_service: {  } }
    assert_redirected_to admin_book_service_url(@admin_book_service)
  end

  test "should destroy admin_book_service" do
    assert_difference("Admin::BookService.count", -1) do
      delete admin_book_service_url(@admin_book_service)
    end

    assert_redirected_to admin_book_services_url
  end
end
