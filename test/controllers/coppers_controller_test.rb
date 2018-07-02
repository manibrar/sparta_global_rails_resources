require 'test_helper'

class CoppersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @copper = coppers(:one)
  end

  test "should get index" do
    get coppers_url
    assert_response :success
  end

  test "should get new" do
    get new_copper_url
    assert_response :success
  end

  test "should create copper" do
    assert_difference('Copper.count') do
      post coppers_url, params: { copper: { body: @copper.body, title: @copper.title } }
    end

    assert_redirected_to copper_url(Copper.last)
  end

  test "should show copper" do
    get copper_url(@copper)
    assert_response :success
  end

  test "should get edit" do
    get edit_copper_url(@copper)
    assert_response :success
  end

  test "should update copper" do
    patch copper_url(@copper), params: { copper: { body: @copper.body, title: @copper.title } }
    assert_redirected_to copper_url(@copper)
  end

  test "should destroy copper" do
    assert_difference('Copper.count', -1) do
      delete copper_url(@copper)
    end

    assert_redirected_to coppers_url
  end
end
