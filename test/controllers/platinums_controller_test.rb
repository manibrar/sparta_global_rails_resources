require 'test_helper'

class PlatinumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @platinum = platinums(:one)
  end

  test "should get index" do
    get platinums_url
    assert_response :success
  end

  test "should get new" do
    get new_platinum_url
    assert_response :success
  end

  test "should create platinum" do
    assert_difference('Platinum.count') do
      post platinums_url, params: { platinum: { body: @platinum.body, title: @platinum.title } }
    end

    assert_redirected_to platinum_url(Platinum.last)
  end

  test "should show platinum" do
    get platinum_url(@platinum)
    assert_response :success
  end

  test "should get edit" do
    get edit_platinum_url(@platinum)
    assert_response :success
  end

  test "should update platinum" do
    patch platinum_url(@platinum), params: { platinum: { body: @platinum.body, title: @platinum.title } }
    assert_redirected_to platinum_url(@platinum)
  end

  test "should destroy platinum" do
    assert_difference('Platinum.count', -1) do
      delete platinum_url(@platinum)
    end

    assert_redirected_to platinums_url
  end
end
