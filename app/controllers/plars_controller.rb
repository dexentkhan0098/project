class PlarsController < ApplicationController
  before_action :set_plar, only: %i[ show edit update destroy ]

  # GET /plars or /plars.json
  def index
    @plars = Plar.all
  end

  # GET /plars/1 or /plars/1.json
  def show
  end

  # GET /plars/new
  def new
    @plar = Plar.new
  end

  # GET /plars/1/edit
  def edit
  end

  # POST /plars or /plars.json
  def create
    @plar = Plar.new(plar_params)

    respond_to do |format|
      if @plar.save
        format.html { redirect_to plar_url(@plar), notice: "Plar was successfully created." }
        format.json { render :show, status: :created, location: @plar }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @plar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plars/1 or /plars/1.json
  def update
    respond_to do |format|
      if @plar.update(plar_params)
        format.html { redirect_to plar_url(@plar), notice: "Plar was successfully updated." }
        format.json { render :show, status: :ok, location: @plar }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @plar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plars/1 or /plars/1.json
  def destroy
    @plar.destroy

    respond_to do |format|
      format.html { redirect_to plars_url, notice: "Plar was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plar
      @plar = Plar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def plar_params
      params.require(:plar).permit(:name, :child_name, :age)
    end
end
