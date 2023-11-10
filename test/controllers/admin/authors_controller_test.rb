require "test_helper"

class Admin::AuthorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_author = admin_authors(:one)
  end

  test "should get index" do
    get admin_authors_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_author_url
    assert_response :success
  end

  test "should create admin_author" do
    assert_difference("Admin::Author.count") do
      post admin_authors_url, params: { admin_author: {  } }
    end

    assert_redirected_to admin_author_url(Admin::Author.last)
  end

  test "should show admin_author" do
    get admin_author_url(@admin_author)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_author_url(@admin_author)
    assert_response :success
  end

  test "should update admin_author" do
    patch admin_author_url(@admin_author), params: { admin_author: {  } }
    assert_redirected_to admin_author_url(@admin_author)
  end

  test "should destroy admin_author" do
    assert_difference("Admin::Author.count", -1) do
      delete admin_author_url(@admin_author)
    end

    assert_redirected_to admin_authors_url
  end
end
