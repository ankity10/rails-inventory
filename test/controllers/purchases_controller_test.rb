require 'test_helper'

class PurchasesControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

  test "should get list" do
    get :list
    assert_response :success
  end

end
