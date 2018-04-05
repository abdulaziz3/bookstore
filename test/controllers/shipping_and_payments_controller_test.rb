require 'test_helper'

class ShippingAndPaymentsControllerTest < ActionController::TestCase
  setup do
    @shipping_and_payment = shipping_and_payments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shipping_and_payments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shipping_and_payment" do
    assert_difference('ShippingAndPayment.count') do
      post :create, shipping_and_payment: { card_number: @shipping_and_payment.card_number, cvv: @shipping_and_payment.cvv, ex_date: @shipping_and_payment.ex_date, name: @shipping_and_payment.name, payment_method: @shipping_and_payment.payment_method, phone: @shipping_and_payment.phone, shipping_address: @shipping_and_payment.shipping_address }
    end

    assert_redirected_to shipping_and_payment_path(assigns(:shipping_and_payment))
  end

  test "should show shipping_and_payment" do
    get :show, id: @shipping_and_payment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shipping_and_payment
    assert_response :success
  end

  test "should update shipping_and_payment" do
    patch :update, id: @shipping_and_payment, shipping_and_payment: { card_number: @shipping_and_payment.card_number, cvv: @shipping_and_payment.cvv, ex_date: @shipping_and_payment.ex_date, name: @shipping_and_payment.name, payment_method: @shipping_and_payment.payment_method, phone: @shipping_and_payment.phone, shipping_address: @shipping_and_payment.shipping_address }
    assert_redirected_to shipping_and_payment_path(assigns(:shipping_and_payment))
  end

  test "should destroy shipping_and_payment" do
    assert_difference('ShippingAndPayment.count', -1) do
      delete :destroy, id: @shipping_and_payment
    end

    assert_redirected_to shipping_and_payments_path
  end
end
