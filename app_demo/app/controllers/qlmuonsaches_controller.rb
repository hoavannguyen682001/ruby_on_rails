class QlmuonsachesController < ApplicationController
  before_action :set_qlmuonsach, only: %i[ show edit update destroy ]

  # GET /qlmuonsaches or /qlmuonsaches.json
  def index
    @qlmuonsaches = Qlmuonsach.all
  end

  # GET /qlmuonsaches/1 or /qlmuonsaches/1.json
  def show
  end

  # GET /qlmuonsaches/new
  def new
    @qlmuonsach = Qlmuonsach.new
  end

  # GET /qlmuonsaches/1/edit
  def edit
  end

  # POST /qlmuonsaches or /qlmuonsaches.json
  def create
    @qlmuonsach = Qlmuonsach.new(qlmuonsach_params)

    respond_to do |format|
      if @qlmuonsach.save
        format.html { redirect_to qlmuonsach_url(@qlmuonsach), notice: "Qlmuonsach was successfully created." }
        format.json { render :show, status: :created, location: @qlmuonsach }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @qlmuonsach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qlmuonsaches/1 or /qlmuonsaches/1.json
  def update
    respond_to do |format|
      if @qlmuonsach.update(qlmuonsach_params)
        format.html { redirect_to qlmuonsach_url(@qlmuonsach), notice: "Qlmuonsach was successfully updated." }
        format.json { render :show, status: :ok, location: @qlmuonsach }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @qlmuonsach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qlmuonsaches/1 or /qlmuonsaches/1.json
  def destroy
    @qlmuonsach.destroy

    respond_to do |format|
      format.html { redirect_to qlmuonsaches_url, notice: "Qlmuonsach was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qlmuonsach
      @qlmuonsach = Qlmuonsach.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def qlmuonsach_params
      params.require(:qlmuonsach).permit(:stt, :name, :lop, :masach, :tensach, :tenTG, :ngaymuon, :ngaytra)
    end
end
