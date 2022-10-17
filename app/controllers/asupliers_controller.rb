class AsupliersController < ApplicationController
  before_action :set_asuplier, only: %i[ show edit update destroy ]

  # GET /asupliers or /asupliers.json
  def index
    @asupliers = Asuplier.all
  end

  # GET /asupliers/1 or /asupliers/1.json
  def show
  end

  # GET /asupliers/new
  def new
    @asuplier = Asuplier.new
  end

  # GET /asupliers/1/edit
  def edit
  end

  # POST /asupliers or /asupliers.json
  def create
    @asuplier = Asuplier.new(asuplier_params)

    respond_to do |format|
      if @asuplier.save
        format.html { redirect_to asuplier_url(@asuplier), notice: "Asuplier was successfully created." }
        format.json { render :show, status: :created, location: @asuplier }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @asuplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asupliers/1 or /asupliers/1.json
  def update
    respond_to do |format|
      if @asuplier.update(asuplier_params)
        format.html { redirect_to asuplier_url(@asuplier), notice: "Asuplier was successfully updated." }
        format.json { render :show, status: :ok, location: @asuplier }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @asuplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asupliers/1 or /asupliers/1.json
  def destroy
    @asuplier.destroy

    respond_to do |format|
      format.html { redirect_to asupliers_url, notice: "Asuplier was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asuplier
      @asuplier = Asuplier.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def asuplier_params
      params.require(:asuplier).permit(:name, :age, :asuplier_id)
    end
end
