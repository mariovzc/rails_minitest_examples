require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
  test 'Login and bowser' do
    get '/users/sign_in'
    post '/users/sign_in', params:{user: {email: users(:mario).email, password: '123456'}}

    follow_redirect!

    assert_equal '/', path

    get '/articles'
    assert_response :success
  end
end