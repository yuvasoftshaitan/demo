require "test_helper"

class AjaxtestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ajaxtest = ajaxtests(:one)
  end

  test "should get index" do
    get ajaxtests_url
    assert_response :success
  end

  test "should get new" do
    get new_ajaxtest_url
    assert_response :success
  end

  test "should create ajaxtest" do
    assert_difference('Ajaxtest.count') do
      post ajaxtests_url, params: { ajaxtest: { mobile: @ajaxtest.mobile, name: @ajaxtest.name } }
    end

    assert_redirected_to ajaxtest_url(Ajaxtest.last)
  end

  test "should show ajaxtest" do
    get ajaxtest_url(@ajaxtest)
    assert_response :success
  end

  test "should get edit" do
    get edit_ajaxtest_url(@ajaxtest)
    assert_response :success
  end

  test "should update ajaxtest" do
    patch ajaxtest_url(@ajaxtest), params: { ajaxtest: { mobile: @ajaxtest.mobile, name: @ajaxtest.name } }
    assert_redirected_to ajaxtest_url(@ajaxtest)
  end

  test "should destroy ajaxtest" do
    assert_difference('Ajaxtest.count', -1) do
      delete ajaxtest_url(@ajaxtest)
    end

    assert_redirected_to ajaxtests_url
  end
end
