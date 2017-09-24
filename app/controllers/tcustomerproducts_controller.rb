class TcustomerproductsController < ApplicationController
  before_action :set_tcustomerproduct, only: [:show, :edit, :update, :destroy]

  # GET /tcustomerproducts
  # GET /tcustomerproducts.json
  def index
    @tcustomerproducts = Tcustomerproduct.all
  end

  # GET /tcustomerproducts/1
  # GET /tcustomerproducts/1.json
  def show
  end

  # GET /tcustomerproducts/new
  def new
    @tcustomerproduct = Tcustomerproduct.new
  end

  # GET /tcustomerproducts/1/edit
  def edit
  end

  # POST /tcustomerproducts
  # POST /tcustomerproducts.json
  def create
    @tcustomerproduct = Tcustomerproduct.new(tcustomerproduct_params)

    respond_to do |format|
      if @tcustomerproduct.save
        format.html { redirect_to @tcustomerproduct, notice: 'Tcustomerproduct was successfully created.' }
        format.json { render :show, status: :created, location: @tcustomerproduct }
      else
        format.html { render :new }
        format.json { render json: @tcustomerproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tcustomerproducts/1
  # PATCH/PUT /tcustomerproducts/1.json
  def update
    respond_to do |format|
      if @tcustomerproduct.update(tcustomerproduct_params)
        format.html { redirect_to @tcustomerproduct, notice: 'Tcustomerproduct was successfully updated.' }
        format.json { render :show, status: :ok, location: @tcustomerproduct }
      else
        format.html { render :edit }
        format.json { render json: @tcustomerproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tcustomerproducts/1
  # DELETE /tcustomerproducts/1.json
  def destroy
    @tcustomerproduct.destroy
    respond_to do |format|
      format.html { redirect_to tcustomerproducts_url, notice: 'Tcustomerproduct was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tcustomerproduct
      @tcustomerproduct = Tcustomerproduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tcustomerproduct_params
      params.require(:tcustomerproduct).permit(:product_id, :customer_id)
    end
end
