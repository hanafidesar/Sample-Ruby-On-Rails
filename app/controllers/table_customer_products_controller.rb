class TableCustomerProductsController < ApplicationController
  before_action :set_table_customer_product, only: [:show, :edit, :update, :destroy]

  # GET /table_customer_products
  # GET /table_customer_products.json
  def index
    @table_customer_products = TableCustomerProduct.all
  end

  # GET /table_customer_products/1
  # GET /table_customer_products/1.json
  def show
  end

  # GET /table_customer_products/new
  def new
    @table_customer_product = TableCustomerProduct.new
  end

  # GET /table_customer_products/1/edit
  def edit
  end

  # POST /table_customer_products
  # POST /table_customer_products.json
  def create
    @table_customer_product = TableCustomerProduct.new(table_customer_product_params)

    respond_to do |format|
      if @table_customer_product.save
        format.html { redirect_to @table_customer_product, notice: 'Table customer product was successfully created.' }
        format.json { render :show, status: :created, location: @table_customer_product }
      else
        format.html { render :new }
        format.json { render json: @table_customer_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /table_customer_products/1
  # PATCH/PUT /table_customer_products/1.json
  def update
    respond_to do |format|
      if @table_customer_product.update(table_customer_product_params)
        format.html { redirect_to @table_customer_product, notice: 'Table customer product was successfully updated.' }
        format.json { render :show, status: :ok, location: @table_customer_product }
      else
        format.html { render :edit }
        format.json { render json: @table_customer_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table_customer_products/1
  # DELETE /table_customer_products/1.json
  def destroy
    @table_customer_product.destroy
    respond_to do |format|
      format.html { redirect_to table_customer_products_url, notice: 'Table customer product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table_customer_product
      @table_customer_product = TableCustomerProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def table_customer_product_params
      params.require(:table_customer_product).permit(:product_id, :customer_id)
    end
end
