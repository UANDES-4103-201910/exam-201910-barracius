class OrdersProductsController < ApplicationController
  before_action :set_orders_product, only: [:show, :edit, :update, :destroy]

  # GET /orders_products
  # GET /orders_products.json
  def index
    @orders_products = OrdersProduct.all
  end

  # GET /orders_products/1
  # GET /orders_products/1.json
  def show
  end

  # GET /orders_products/new
  def new
    @orders_product = OrdersProduct.new
  end

  # GET /orders_products/1/edit
  def edit
  end

  # POST /orders_products
  # POST /orders_products.json
  def create
    @orders_product = OrdersProduct.new(orders_product_params)

    respond_to do |format|
      if @orders_product.save
        format.html { redirect_to @orders_product, notice: 'Orders product was successfully created.' }
        format.json { render :show, status: :created, location: @orders_product }
      else
        format.html { render :new }
        format.json { render json: @orders_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders_products/1
  # PATCH/PUT /orders_products/1.json
  def update
    respond_to do |format|
      if @orders_product.update(orders_product_params)
        format.html { redirect_to @orders_product, notice: 'Orders product was successfully updated.' }
        format.json { render :show, status: :ok, location: @orders_product }
      else
        format.html { render :edit }
        format.json { render json: @orders_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders_products/1
  # DELETE /orders_products/1.json
  def destroy
    @orders_product.destroy
    respond_to do |format|
      format.html { redirect_to orders_products_url, notice: 'Orders product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orders_product
      @orders_product = OrdersProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orders_product_params
      params.require(:orders_product).permit(:order_id, :product_id, :amount)
    end
end
