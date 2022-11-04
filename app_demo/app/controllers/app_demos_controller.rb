class AppDemosController < ApplicationController
  before_action :set_app_demo, only: %i[ show edit update destroy ]

  # GET /app_demos or /app_demos.json
  def index
    @app_demos = AppDemo.all
  end

  # GET /app_demos/1 or /app_demos/1.json
  def show
  end

  # GET /app_demos/new
  def new
    @app_demo = AppDemo.new
  end

  # GET /app_demos/1/edit
  def edit
  end

  # POST /app_demos or /app_demos.json
  def create
    @app_demo = AppDemo.new(app_demo_params)

    respond_to do |format|
      if @app_demo.save
        format.html { redirect_to app_demo_url(@app_demo), notice: "App demo was successfully created." }
        format.json { render :show, status: :created, location: @app_demo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @app_demo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_demos/1 or /app_demos/1.json
  def update
    respond_to do |format|
      if @app_demo.update(app_demo_params)
        format.html { redirect_to app_demo_url(@app_demo), notice: "App demo was successfully updated." }
        format.json { render :show, status: :ok, location: @app_demo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @app_demo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_demos/1 or /app_demos/1.json
  def destroy
    @app_demo.destroy

    respond_to do |format|
      format.html { redirect_to app_demos_url, notice: "App demo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_demo
      @app_demo = AppDemo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def app_demo_params
      params.require(:app_demo).permit(:name, :last_name)
    end
end
