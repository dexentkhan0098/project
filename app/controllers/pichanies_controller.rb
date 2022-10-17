class PichaniesController < ApplicationController
  before_action :set_pichany, only: %i[ show edit update destroy ]

  # GET /pichanies or /pichanies.json
  def index
    @pichanies = Pichany.all
  end

  # GET /pichanies/1 or /pichanies/1.json
  def show
  end

  # GET /pichanies/new
  def new
    @pichany = Pichany.new
  end

  # GET /pichanies/1/edit
  def edit
  end

  # POST /pichanies or /pichanies.json
  def create
    @pichany = Pichany.new(pichany_params)

    respond_to do |format|
      if @pichany.save
        format.html { redirect_to pichany_url(@pichany), notice: "Pichany was successfully created." }
        format.json { render :show, status: :created, location: @pichany }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pichany.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pichanies/1 or /pichanies/1.json
  def update
    respond_to do |format|
      if @pichany.update(pichany_params)
        format.html { redirect_to pichany_url(@pichany), notice: "Pichany was successfully updated." }
        format.json { render :show, status: :ok, location: @pichany }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pichany.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pichanies/1 or /pichanies/1.json
  def destroy
    @pichany.destroy

    respond_to do |format|
      format.html { redirect_to pichanies_url, notice: "Pichany was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pichany
      @pichany = Pichany.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pichany_params
      params.require(:pichany).permit(:name, :age)
    end
end
