require 'test_helper'

class RestorentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restorent = restorents(:one)
  end

  test "should get index" do
    get restorents_url
    assert_response :success
  end

  test "should get new" do
    get new_restorent_url
    assert_response :success
  end

  test "should create restorent" do
    assert_difference('Restorent.count') do
      post restorents_url, params: { restorent: { cuisine: @restorent.cuisine, currency: @restorent.currency, image: @restorent.image, location: @restorent.location, name: @restorent.name, onlineDelivery: @restorent.onlineDelivery, price: @restorent.price, table_Booking: @restorent.table_Booking, user_id: @restorent.user_id, website: @restorent.website } }
    end

    assert_redirected_to restorent_url(Restorent.last)
  end

  test "should show restorent" do
    get restorent_url(@restorent)
    assert_response :success
  end

  test "should get edit" do
    get edit_restorent_url(@restorent)
    assert_response :success
  end

  test "should update restorent" do
    patch restorent_url(@restorent), params: { restorent: { cuisine: @restorent.cuisine, currency: @restorent.currency, image: @restorent.image, location: @restorent.location, name: @restorent.name, onlineDelivery: @restorent.onlineDelivery, price: @restorent.price, table_Booking: @restorent.table_Booking, user_id: @restorent.user_id, website: @restorent.website } }
    assert_redirected_to restorent_url(@restorent)
  end

  test "should destroy restorent" do
    assert_difference('Restorent.count', -1) do
      delete restorent_url(@restorent)
    end

    assert_redirected_to restorents_url
  end
end
