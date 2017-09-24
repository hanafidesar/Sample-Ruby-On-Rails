class TableSupplierProductsController < ApplicationController
  before_action :set_table_supplier_product, only: [:show, :edit, :update, :destroy]

  # GET /table_supplier_products
  # GET /table_supplier_products.json
  def index
    @table_supplier_products = TableSupplierProduct.all
    logger.debug "Person attributes hash: #{@table_supplier_products.inspect}"
  end

  # GET /table_supplier_products/1
  # GET /table_supplier_products/1.json
  def show
  end

  # GET /table_supplier_products/new
  def new
    @table_supplier_product = TableSupplierProduct.new
  end

  # GET /table_supplier_products/1/edit
  def edit
  end

  # POST /table_supplier_products
  # POST /table_supplier_products.json
  def create
    @table_supplier_product = TableSupplierProduct.new(table_supplier_product_params)

    respond_to do |format|
      if @table_supplier_product.save
        format.html { redirect_to @table_supplier_product, notice: 'Table supplier product was successfully created.' }
        format.json { render :show, status: :created, location: @table_supplier_product }
      else
        format.html { render :new }
        format.json { render json: @table_supplier_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /table_supplier_products/1
  # PATCH/PUT /table_supplier_products/1.json
  def update
    respond_to do |format|
      if @table_supplier_product.update(table_supplier_product_params)
        format.html { redirect_to @table_supplier_product, notice: 'Table supplier product was successfully updated.' }
        format.json { render :show, status: :ok, location: @table_supplier_product }
      else
        format.html { render :edit }
        format.json { render json: @table_supplier_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table_supplier_products/1
  # DELETE /table_supplier_products/1.json
  def destroy
    @table_supplier_product.destroy
    respond_to do |format|
      format.html { redirect_to table_supplier_products_url, notice: 'Table supplier product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table_supplier_product
      @table_supplier_product = TableSupplierProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def table_supplier_product_params
      params.require(:table_supplier_product).permit(:supplier_id, :product_id)
    end
end
