require 'test_helper'

class TableCustomerProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @table_customer_product = table_customer_products(:one)
  end

  test "should get index" do
    get table_customer_products_url
    assert_response :success
  end

  test "should get new" do
    get new_table_customer_product_url
    assert_response :success
  end

  test "should create table_customer_product" do
    assert_difference('TableCustomerProduct.count') do
      post table_customer_products_url, params: { table_customer_product: { customer_id: @table_customer_product.customer_id, product_id: @table_customer_product.product_id } }
    end

    assert_redirected_to table_customer_product_url(TableCustomerProduct.last)
  end

  test "should show table_customer_product" do
    get table_customer_product_url(@table_customer_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_table_customer_product_url(@table_customer_product)
    assert_response :success
  end

  test "should update table_customer_product" do
    patch table_customer_product_url(@table_customer_product), params: { table_customer_product: { customer_id: @table_customer_product.customer_id, product_id: @table_customer_product.product_id } }
    assert_redirected_to table_customer_product_url(@table_customer_product)
  end

  test "should destroy table_customer_product" do
    assert_difference('TableCustomerProduct.count', -1) do
      delete table_customer_product_url(@table_customer_product)
    end

    assert_redirected_to table_customer_products_url
  end
end
