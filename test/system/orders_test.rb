require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "should create order" do
    visit orders_url
    click_on "New order"

    fill_in "Billing address", with: @order.billing_address
    fill_in "Date of order", with: @order.date_of_order
    fill_in "Order no", with: @order.order_no
    fill_in "Order status", with: @order.order_status
    fill_in "Shipping address", with: @order.shipping_address
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "should update Order" do
    visit order_url(@order)
    click_on "Edit this order", match: :first

    fill_in "Billing address", with: @order.billing_address
    fill_in "Date of order", with: @order.date_of_order
    fill_in "Order no", with: @order.order_no
    fill_in "Order status", with: @order.order_status
    fill_in "Shipping address", with: @order.shipping_address
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "should destroy Order" do
    visit order_url(@order)
    click_on "Destroy this order", match: :first

    assert_text "Order was successfully destroyed"
  end
end
