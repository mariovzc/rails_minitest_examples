require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
  test 'Login and bowser' do
    get '/users/sign_in'
    post_via_redirect '/users/sign_in', user: {email: users(:mario).email, password: '123456'}
    assert_equal '/', path
  end
end