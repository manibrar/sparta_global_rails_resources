class SilversController < ApplicationController
  before_action :set_silver, only: [:show, :edit, :update, :destroy]

  # GET /silvers
  # GET /silvers.json
  def index
    @silvers = Silver.all
  end

  # GET /silvers/1
  # GET /silvers/1.json
  def show
  end

  # GET /silvers/new
  def new
    @silver = Silver.new
  end

  # GET /silvers/1/edit
  def edit
  end

  # POST /silvers
  # POST /silvers.json
  def create
    @silver = Silver.new(silver_params)

    respond_to do |format|
      if @silver.save
        format.html { redirect_to @silver, notice: 'Silver was successfully created.' }
        format.json { render :show, status: :created, location: @silver }
      else
        format.html { render :new }
        format.json { render json: @silver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /silvers/1
  # PATCH/PUT /silvers/1.json
  def update
    respond_to do |format|
      if @silver.update(silver_params)
        format.html { redirect_to @silver, notice: 'Silver was successfully updated.' }
        format.json { render :show, status: :ok, location: @silver }
      else
        format.html { render :edit }
        format.json { render json: @silver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /silvers/1
  # DELETE /silvers/1.json
  def destroy
    @silver.destroy
    respond_to do |format|
      format.html { redirect_to silvers_url, notice: 'Silver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_silver
      @silver = Silver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def silver_params
      params.require(:silver).permit(:title, :body)
    end
end
