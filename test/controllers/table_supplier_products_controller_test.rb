require 'test_helper'

class TableSupplierProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @table_supplier_product = table_supplier_products(:one)
  end

  test "should get index" do
    get table_supplier_products_url
    assert_response :success
  end

  test "should get new" do
    get new_table_supplier_product_url
    assert_response :success
  end

  test "should create table_supplier_product" do
    assert_difference('TableSupplierProduct.count') do
      post table_supplier_products_url, params: { table_supplier_product: { product_id: @table_supplier_product.product_id, supplier_id: @table_supplier_product.supplier_id } }
    end

    assert_redirected_to table_supplier_product_url(TableSupplierProduct.last)
  end

  test "should show table_supplier_product" do
    get table_supplier_product_url(@table_supplier_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_table_supplier_product_url(@table_supplier_product)
    assert_response :success
  end

  test "should update table_supplier_product" do
    patch table_supplier_product_url(@table_supplier_product), params: { table_supplier_product: { product_id: @table_supplier_product.product_id, supplier_id: @table_supplier_product.supplier_id } }
    assert_redirected_to table_supplier_product_url(@table_supplier_product)
  end

  test "should destroy table_supplier_product" do
    assert_difference('TableSupplierProduct.count', -1) do
      delete table_supplier_product_url(@table_supplier_product)
    end

    assert_redirected_to table_supplier_products_url
  end
end
