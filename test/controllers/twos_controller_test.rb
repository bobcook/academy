require 'test_helper'

class TwosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @two = twos(:one)
  end

  test "should get index" do
    get twos_url
    assert_response :success
  end

  test "should get new" do
    get new_two_url
    assert_response :success
  end

  test "should create two" do
    assert_difference('Two.count') do
      post twos_url, params: { two: { x: @two.x, y: @two.y } }
    end

    assert_redirected_to two_url(Two.last)
  end

  test "should show two" do
    get two_url(@two)
    assert_response :success
  end

  test "should sum two" do
    x, y = 1, 2
    sum = x + y
    assert_sum = 3
  end

  test "should get edit" do
    get edit_two_url(@two)
    assert_response :success
  end

  test "should update two" do
    patch two_url(@two), params: { two: { x: @two.x, y: @two.y } }
    assert_redirected_to two_url(@two)
  end

  test "should destroy two" do
    assert_difference('Two.count', -1) do
      delete two_url(@two)
    end

    assert_redirected_to twos_url
  end
end
