class PlatinumsController < ApplicationController
  before_action :set_platinum, only: [:show, :edit, :update, :destroy]

  # GET /platinums
  # GET /platinums.json
  def index
    @platinums = Platinum.all
  end

  # GET /platinums/1
  # GET /platinums/1.json
  def show
  end

  # GET /platinums/new
  def new
    @platinum = Platinum.new
  end

  # GET /platinums/1/edit
  def edit
  end

  # POST /platinums
  # POST /platinums.json
  def create
    @platinum = Platinum.new(platinum_params)

    respond_to do |format|
      if @platinum.save
        format.html { redirect_to @platinum, notice: 'Platinum was successfully created.' }
        format.json { render :show, status: :created, location: @platinum }
      else
        format.html { render :new }
        format.json { render json: @platinum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /platinums/1
  # PATCH/PUT /platinums/1.json
  def update
    respond_to do |format|
      if @platinum.update(platinum_params)
        format.html { redirect_to @platinum, notice: 'Platinum was successfully updated.' }
        format.json { render :show, status: :ok, location: @platinum }
      else
        format.html { render :edit }
        format.json { render json: @platinum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /platinums/1
  # DELETE /platinums/1.json
  def destroy
    @platinum.destroy
    respond_to do |format|
      format.html { redirect_to platinums_url, notice: 'Platinum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_platinum
      @platinum = Platinum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def platinum_params
      params.require(:platinum).permit(:title, :body)
    end
end
