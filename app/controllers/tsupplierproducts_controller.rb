class TsupplierproductsController < ApplicationController
  before_action :set_tsupplierproduct, only: [:show, :edit, :update, :destroy]

  # GET /tsupplierproducts
  # GET /tsupplierproducts.json
  def index
    @tsupplierproducts = Tsupplierproduct.all
  end

  # GET /tsupplierproducts/1
  # GET /tsupplierproducts/1.json
  def show
  end

  # GET /tsupplierproducts/new
  def new
    @tsupplierproduct = Tsupplierproduct.new
  end

  # GET /tsupplierproducts/1/edit
  def edit
  end

  # POST /tsupplierproducts
  # POST /tsupplierproducts.json
  def create
    @tsupplierproduct = Tsupplierproduct.new(tsupplierproduct_params)

    respond_to do |format|
      if @tsupplierproduct.save
        format.html { redirect_to @tsupplierproduct, notice: 'Tsupplierproduct was successfully created.' }
        format.json { render :show, status: :created, location: @tsupplierproduct }
      else
        format.html { render :new }
        format.json { render json: @tsupplierproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tsupplierproducts/1
  # PATCH/PUT /tsupplierproducts/1.json
  def update
    respond_to do |format|
      if @tsupplierproduct.update(tsupplierproduct_params)
        format.html { redirect_to @tsupplierproduct, notice: 'Tsupplierproduct was successfully updated.' }
        format.json { render :show, status: :ok, location: @tsupplierproduct }
      else
        format.html { render :edit }
        format.json { render json: @tsupplierproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tsupplierproducts/1
  # DELETE /tsupplierproducts/1.json
  def destroy
    @tsupplierproduct.destroy
    respond_to do |format|
      format.html { redirect_to tsupplierproducts_url, notice: 'Tsupplierproduct was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tsupplierproduct
      @tsupplierproduct = Tsupplierproduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tsupplierproduct_params
      params.require(:tsupplierproduct).permit(:product_id, :supplier_id)
    end
end
