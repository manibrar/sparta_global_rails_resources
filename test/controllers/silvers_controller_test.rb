require 'test_helper'

class SilversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @silver = silvers(:one)
  end

  test "should get index" do
    get silvers_url
    assert_response :success
  end

  test "should get new" do
    get new_silver_url
    assert_response :success
  end

  test "should create silver" do
    assert_difference('Silver.count') do
      post silvers_url, params: { silver: { body: @silver.body, title: @silver.title } }
    end

    assert_redirected_to silver_url(Silver.last)
  end

  test "should show silver" do
    get silver_url(@silver)
    assert_response :success
  end

  test "should get edit" do
    get edit_silver_url(@silver)
    assert_response :success
  end

  test "should update silver" do
    patch silver_url(@silver), params: { silver: { body: @silver.body, title: @silver.title } }
    assert_redirected_to silver_url(@silver)
  end

  test "should destroy silver" do
    assert_difference('Silver.count', -1) do
      delete silver_url(@silver)
    end

    assert_redirected_to silvers_url
  end
end
