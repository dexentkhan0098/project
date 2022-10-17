class AacountsController < ApplicationController
  before_action :set_aacount, only: %i[ show edit update destroy ]

  # GET /aacounts or /aacounts.json
  def index
    @aacounts = Aacount.all
  end

  # GET /aacounts/1 or /aacounts/1.json
  def show
  end

  # GET /aacounts/new
  def new
    @aacount = Aacount.new
  end

  # GET /aacounts/1/edit
  def edit
  end

  # POST /aacounts or /aacounts.json
  def create
    @aacount = Aacount.new(aacount_params)

    respond_to do |format|
      if @aacount.save
        format.html { redirect_to aacount_url(@aacount), notice: "Aacount was successfully created." }
        format.json { render :show, status: :created, location: @aacount }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aacount.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aacounts/1 or /aacounts/1.json
  def update
    respond_to do |format|
      if @aacount.update(aacount_params)
        format.html { redirect_to aacount_url(@aacount), notice: "Aacount was successfully updated." }
        format.json { render :show, status: :ok, location: @aacount }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aacount.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aacounts/1 or /aacounts/1.json
  def destroy
    @aacount.destroy

    respond_to do |format|
      format.html { redirect_to aacounts_url, notice: "Aacount was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aacount
      @aacount = Aacount.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aacount_params
      params.require(:aacount).permit(:title)
    end
end
