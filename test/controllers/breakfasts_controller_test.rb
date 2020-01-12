require 'test_helper'

class BreakfastsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @breakfast = breakfasts(:one)
  end

  test "should get index" do
    get breakfasts_url
    assert_response :success
  end

  test "should get new" do
    get new_breakfast_url
    assert_response :success
  end

  test "should create breakfast" do
    assert_difference('Breakfast.count') do
      post breakfasts_url, params: { breakfast: { name: @breakfast.name, price: @breakfast.price, restorent_id: @breakfast.restorent_id } }
    end

    assert_redirected_to breakfast_url(Breakfast.last)
  end

  test "should show breakfast" do
    get breakfast_url(@breakfast)
    assert_response :success
  end

  test "should get edit" do
    get edit_breakfast_url(@breakfast)
    assert_response :success
  end

  test "should update breakfast" do
    patch breakfast_url(@breakfast), params: { breakfast: { name: @breakfast.name, price: @breakfast.price, restorent_id: @breakfast.restorent_id } }
    assert_redirected_to breakfast_url(@breakfast)
  end

  test "should destroy breakfast" do
    assert_difference('Breakfast.count', -1) do
      delete breakfast_url(@breakfast)
    end

    assert_redirected_to breakfasts_url
  end
end
