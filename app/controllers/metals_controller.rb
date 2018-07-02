class MetalsController < ApplicationController
  before_action :set_metal, only: [:show, :edit, :update, :destroy]

  # GET /metals
  # GET /metals.json
  def index
    @metals = Metal.all
    if cookies[:visited]
      response.set_cookie(:visited,
        :value => cookies[:visited].to_i + 1
      )
    else
        @show_message = true;
        # set the visited cookie
        response.set_cookie(:visited,
                            :value => 1,
                            :expires => Time.now + (60 * 60 * 2)
                           )

      end
  end

  # GET /metals/1
  # GET /metals/1.json
  def show
      if cookies[:show]
        response.set_cookie(:show,
          :value => cookies[:show].to_i + 1
        )
      else
        @show_message = true;
        # set the visited cookie
        response.set_cookie(:show,
                            :value => 1,
                            :expires => Time.now + (60 * 60 * 2)
                           )

      end
  end

  # GET /metals/new
  def new
    @metal = Metal.new
    if cookies[:new]
      response.set_cookie(:new,
        :value => cookies[:new].to_i + 1
      )
    else
      @show_message = true;
      # set the visited cookie
      response.set_cookie(:new,
                          :value => 1,
                          :expires => Time.now + (60 * 60 * 2)
                         )

    end
  end

  # GET /metals/1/edit
  def edit
  end

  # POST /metals
  # POST /metals.json
  def create
    @metal = Metal.new(metal_params)

    respond_to do |format|
      if @metal.save
        format.html { redirect_to @metal, notice: 'Metal was successfully created.' }
        format.json { render :show, status: :created, location: @metal }
      else
        format.html { render :new }
        format.json { render json: @metal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metals/1
  # PATCH/PUT /metals/1.json
  def update
    if cookies[:edit]
      response.set_cookie(:edit,
        :value => cookies[:edit].to_i + 1
      )
    else
      @show_message = true;

      # set the visited cookie
      response.set_cookie(:edit,
                          :value => 1,
                          :expires => Time.now + (60 * 60 * 2)
                         )

    end
    respond_to do |format|
      if @metal.update(metal_params)
        format.html { redirect_to @metal, notice: 'Metal was successfully updated.' }
        format.json { render :show, status: :ok, location: @metal }
      else
        format.html { render :edit }
        format.json { render json: @metal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metals/1
  # DELETE /metals/1.json
  def destroy
    if cookies[:destroy]
      response.set_cookie(:destroy,
        :value => cookies[:destroy].to_i + 1
      )
    else
      @show_message = true;

      # set the visited cookie
      response.set_cookie(:destroy,
                          :value => 1,
                          :expires => Time.now + (60 * 60 * 2)
                         )
    end
    @metal.destroy
    respond_to do |format|
      format.html { redirect_to metals_url, notice: 'Metal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metal
      @metal = Metal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metal_params
      params.require(:metal).permit(:title, :body)
    end
end
