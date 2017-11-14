require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  
  setup do
    sign_in users(:mario)    
  end
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get secret" do
    get home_secret_url
    assert_response :success
  end

end
