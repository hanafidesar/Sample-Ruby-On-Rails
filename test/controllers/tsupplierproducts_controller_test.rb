require 'test_helper'

class TsupplierproductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tsupplierproduct = tsupplierproducts(:one)
  end

  test "should get index" do
    get tsupplierproducts_url
    assert_response :success
  end

  test "should get new" do
    get new_tsupplierproduct_url
    assert_response :success
  end

  test "should create tsupplierproduct" do
    assert_difference('Tsupplierproduct.count') do
      post tsupplierproducts_url, params: { tsupplierproduct: { product_id: @tsupplierproduct.product_id, supplier_id: @tsupplierproduct.supplier_id } }
    end

    assert_redirected_to tsupplierproduct_url(Tsupplierproduct.last)
  end

  test "should show tsupplierproduct" do
    get tsupplierproduct_url(@tsupplierproduct)
    assert_response :success
  end

  test "should get edit" do
    get edit_tsupplierproduct_url(@tsupplierproduct)
    assert_response :success
  end

  test "should update tsupplierproduct" do
    patch tsupplierproduct_url(@tsupplierproduct), params: { tsupplierproduct: { product_id: @tsupplierproduct.product_id, supplier_id: @tsupplierproduct.supplier_id } }
    assert_redirected_to tsupplierproduct_url(@tsupplierproduct)
  end

  test "should destroy tsupplierproduct" do
    assert_difference('Tsupplierproduct.count', -1) do
      delete tsupplierproduct_url(@tsupplierproduct)
    end

    assert_redirected_to tsupplierproducts_url
  end
end
