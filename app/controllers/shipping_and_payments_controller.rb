class ShippingAndPaymentsController < ApplicationController
  before_action :set_shipping_and_payment, only: [:show, :edit, :update, :destroy]

  # GET /shipping_and_payments
  # GET /shipping_and_payments.json
  def index
    @shipping_and_payments = ShippingAndPayment.all
  end

  # GET /shipping_and_payments/1
  # GET /shipping_and_payments/1.json
  def show
  end

  # GET /shipping_and_payments/new
  def new
    @shipping_and_payment = ShippingAndPayment.new
  end

  # GET /shipping_and_payments/1/edit
  def edit
  end

  # POST /shipping_and_payments
  # POST /shipping_and_payments.json
  def create
    @shipping_and_payment = ShippingAndPayment.new(shipping_and_payment_params)

    respond_to do |format|
      if @shipping_and_payment.save
        format.html { redirect_to @shipping_and_payment, notice: 'Shipping and payment was successfully created.' }
        format.json { render :show, status: :created, location: @shipping_and_payment }
      else
        format.html { render :new }
        format.json { render json: @shipping_and_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipping_and_payments/1
  # PATCH/PUT /shipping_and_payments/1.json
  def update
    respond_to do |format|
      if @shipping_and_payment.update(shipping_and_payment_params)
        format.html { redirect_to @shipping_and_payment, notice: 'Shipping and payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @shipping_and_payment }
      else
        format.html { render :edit }
        format.json { render json: @shipping_and_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipping_and_payments/1
  # DELETE /shipping_and_payments/1.json
  def destroy
    @shipping_and_payment.destroy
    respond_to do |format|
      format.html { redirect_to shipping_and_payments_url, notice: 'Shipping and payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipping_and_payment
      @shipping_and_payment = ShippingAndPayment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shipping_and_payment_params
      params.require(:shipping_and_payment).permit(:payment_method, :card_number, :ex_date, :cvv, :shipping_address, :phone, :name)
    end
end
