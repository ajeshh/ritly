require 'test_helper'

class UrlsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get redirector" do
    get :redirector
    assert_response :success
  end

  test "should get preview" do
    get :preview
    assert_response :success
  end

end
