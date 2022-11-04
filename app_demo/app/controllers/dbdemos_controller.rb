class DbdemosController < ApplicationController
  before_action :set_dbdemo, only: %i[ show edit update destroy ]

  # GET /dbdemos or /dbdemos.json
  def index
    @dbdemos = Dbdemo.all
  end

  # GET /dbdemos/1 or /dbdemos/1.json
  def show
  end

  # GET /dbdemos/new
  def new
    @dbdemo = Dbdemo.new
  end

  # GET /dbdemos/1/edit
  def edit
  end

  # POST /dbdemos or /dbdemos.json
  def create
    @dbdemo = Dbdemo.new(dbdemo_params)

    respond_to do |format|
      if @dbdemo.save
        format.html { redirect_to dbdemo_url(@dbdemo), notice: "Dbdemo was successfully created." }
        format.json { render :show, status: :created, location: @dbdemo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dbdemo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dbdemos/1 or /dbdemos/1.json
  def update
    respond_to do |format|
      if @dbdemo.update(dbdemo_params)
        format.html { redirect_to dbdemo_url(@dbdemo), notice: "Dbdemo was successfully updated." }
        format.json { render :show, status: :ok, location: @dbdemo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dbdemo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dbdemos/1 or /dbdemos/1.json
  def destroy
    @dbdemo.destroy

    respond_to do |format|
      format.html { redirect_to dbdemos_url, notice: "Dbdemo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dbdemo
      @dbdemo = Dbdemo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dbdemo_params
      params.require(:dbdemo).permit(:first_name, :last_name, :phone, :email)
    end
end
