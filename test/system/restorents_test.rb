require "application_system_test_case"

class RestorentsTest < ApplicationSystemTestCase
  setup do
    @restorent = restorents(:one)
  end

  test "visiting the index" do
    visit restorents_url
    assert_selector "h1", text: "Restorents"
  end

  test "creating a Restorent" do
    visit restorents_url
    click_on "New Restorent"

    fill_in "Cuisine", with: @restorent.cuisine
    fill_in "Currency", with: @restorent.currency
    fill_in "Image", with: @restorent.image
    fill_in "Location", with: @restorent.location
    fill_in "Name", with: @restorent.name
    fill_in "Onlinedelivery", with: @restorent.onlineDelivery
    fill_in "Price", with: @restorent.price
    fill_in "Table booking", with: @restorent.table_Booking
    fill_in "User", with: @restorent.user_id
    fill_in "Website", with: @restorent.website
    click_on "Create Restorent"

    assert_text "Restorent was successfully created"
    click_on "Back"
  end

  test "updating a Restorent" do
    visit restorents_url
    click_on "Edit", match: :first

    fill_in "Cuisine", with: @restorent.cuisine
    fill_in "Currency", with: @restorent.currency
    fill_in "Image", with: @restorent.image
    fill_in "Location", with: @restorent.location
    fill_in "Name", with: @restorent.name
    fill_in "Onlinedelivery", with: @restorent.onlineDelivery
    fill_in "Price", with: @restorent.price
    fill_in "Table booking", with: @restorent.table_Booking
    fill_in "User", with: @restorent.user_id
    fill_in "Website", with: @restorent.website
    click_on "Update Restorent"

    assert_text "Restorent was successfully updated"
    click_on "Back"
  end

  test "destroying a Restorent" do
    visit restorents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Restorent was successfully destroyed"
  end
end
