class MuonsachesController < ApplicationController
  before_action :set_muonsach, only: %i[ show edit update destroy ]

  # GET /muonsaches or /muonsaches.json
  def index
    @muonsaches = Muonsach.all
  end

  # GET /muonsaches/1 or /muonsaches/1.json
  def show
  end

  # GET /muonsaches/new
  def new
    @muonsach = Muonsach.new
  end

  # GET /muonsaches/1/edit
  def edit
  end

  # POST /muonsaches or /muonsaches.json
  def create
    @muonsach = Muonsach.new(muonsach_params)

    respond_to do |format|
      if @muonsach.save
        format.html { redirect_to muonsach_url(@muonsach), notice: "Muonsach was successfully created." }
        format.json { render :show, status: :created, location: @muonsach }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @muonsach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /muonsaches/1 or /muonsaches/1.json
  def update
    respond_to do |format|
      if @muonsach.update(muonsach_params)
        format.html { redirect_to muonsach_url(@muonsach), notice: "Muonsach was successfully updated." }
        format.json { render :show, status: :ok, location: @muonsach }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @muonsach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /muonsaches/1 or /muonsaches/1.json
  def destroy
    @muonsach.destroy

    respond_to do |format|
      format.html { redirect_to muonsaches_url, notice: "Muonsach was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_muonsach
      @muonsach = Muonsach.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def muonsach_params
      params.require(:muonsach).permit(:stt, :hoten, :lop, :masach, :tensach, :tentg, :tusach, :ngaymuon, :ngaytra)
    end
end
