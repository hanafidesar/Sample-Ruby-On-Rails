require 'test_helper'

class TcustomerproductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tcustomerproduct = tcustomerproducts(:one)
  end

  test "should get index" do
    get tcustomerproducts_url
    assert_response :success
  end

  test "should get new" do
    get new_tcustomerproduct_url
    assert_response :success
  end

  test "should create tcustomerproduct" do
    assert_difference('Tcustomerproduct.count') do
      post tcustomerproducts_url, params: { tcustomerproduct: { customer_id: @tcustomerproduct.customer_id, product_id: @tcustomerproduct.product_id } }
    end

    assert_redirected_to tcustomerproduct_url(Tcustomerproduct.last)
  end

  test "should show tcustomerproduct" do
    get tcustomerproduct_url(@tcustomerproduct)
    assert_response :success
  end

  test "should get edit" do
    get edit_tcustomerproduct_url(@tcustomerproduct)
    assert_response :success
  end

  test "should update tcustomerproduct" do
    patch tcustomerproduct_url(@tcustomerproduct), params: { tcustomerproduct: { customer_id: @tcustomerproduct.customer_id, product_id: @tcustomerproduct.product_id } }
    assert_redirected_to tcustomerproduct_url(@tcustomerproduct)
  end

  test "should destroy tcustomerproduct" do
    assert_difference('Tcustomerproduct.count', -1) do
      delete tcustomerproduct_url(@tcustomerproduct)
    end

    assert_redirected_to tcustomerproducts_url
  end
end
