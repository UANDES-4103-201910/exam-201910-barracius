require 'test_helper'

class OrdersProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orders_product = orders_products(:one)
  end

  test "should get index" do
    get orders_products_url
    assert_response :success
  end

  test "should get new" do
    get new_orders_product_url
    assert_response :success
  end

  test "should create orders_product" do
    assert_difference('OrdersProduct.count') do
      post orders_products_url, params: { orders_product: { amount: @orders_product.amount, order_id: @orders_product.order_id, product_id: @orders_product.product_id } }
    end

    assert_redirected_to orders_product_url(OrdersProduct.last)
  end

  test "should show orders_product" do
    get orders_product_url(@orders_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_orders_product_url(@orders_product)
    assert_response :success
  end

  test "should update orders_product" do
    patch orders_product_url(@orders_product), params: { orders_product: { amount: @orders_product.amount, order_id: @orders_product.order_id, product_id: @orders_product.product_id } }
    assert_redirected_to orders_product_url(@orders_product)
  end

  test "should destroy orders_product" do
    assert_difference('OrdersProduct.count', -1) do
      delete orders_product_url(@orders_product)
    end

    assert_redirected_to orders_products_url
  end
end
