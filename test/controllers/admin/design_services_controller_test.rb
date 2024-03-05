require "test_helper"

class Admin::DesignServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_design_service = admin_design_services(:one)
  end

  test "should get index" do
    get admin_design_services_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_design_service_url
    assert_response :success
  end

  test "should create admin_design_service" do
    assert_difference("Admin::DesignService.count") do
      post admin_design_services_url, params: { admin_design_service: {  } }
    end

    assert_redirected_to admin_design_service_url(Admin::DesignService.last)
  end

  test "should show admin_design_service" do
    get admin_design_service_url(@admin_design_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_design_service_url(@admin_design_service)
    assert_response :success
  end

  test "should update admin_design_service" do
    patch admin_design_service_url(@admin_design_service), params: { admin_design_service: {  } }
    assert_redirected_to admin_design_service_url(@admin_design_service)
  end

  test "should destroy admin_design_service" do
    assert_difference("Admin::DesignService.count", -1) do
      delete admin_design_service_url(@admin_design_service)
    end

    assert_redirected_to admin_design_services_url
  end
end
