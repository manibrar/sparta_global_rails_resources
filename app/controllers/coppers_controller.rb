class CoppersController < ApplicationController
  before_action :set_copper, only: [:show, :edit, :update, :destroy]

  # GET /coppers
  # GET /coppers.json
  def index
    @coppers = Copper.all
  end

  # GET /coppers/1
  # GET /coppers/1.json
  def show
  end

  # GET /coppers/new
  def new
    @copper = Copper.new
  end

  # GET /coppers/1/edit
  def edit
  end

  # POST /coppers
  # POST /coppers.json
  def create
    @copper = Copper.new(copper_params)

    respond_to do |format|
      if @copper.save
        format.html { redirect_to @copper, notice: 'Copper was successfully created.' }
        format.json { render :show, status: :created, location: @copper }
      else
        format.html { render :new }
        format.json { render json: @copper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coppers/1
  # PATCH/PUT /coppers/1.json
  def update
    respond_to do |format|
      if @copper.update(copper_params)
        format.html { redirect_to @copper, notice: 'Copper was successfully updated.' }
        format.json { render :show, status: :ok, location: @copper }
      else
        format.html { render :edit }
        format.json { render json: @copper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coppers/1
  # DELETE /coppers/1.json
  def destroy
    @copper.destroy
    respond_to do |format|
      format.html { redirect_to coppers_url, notice: 'Copper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_copper
      @copper = Copper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def copper_params
      params.require(:copper).permit(:title, :body)
    end
end
