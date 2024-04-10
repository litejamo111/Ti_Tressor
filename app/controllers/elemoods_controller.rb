class ElemoodsController < ApplicationController
  before_action :set_elemood, only: %i[ show edit update destroy ]

  # GET /elemoods or /elemoods.json
  def index
    @elemoods = Elemood.all
  end

  # GET /elemoods/1 or /elemoods/1.json
  def show
  end

  # GET /elemoods/new
  def new
    @elemood = Elemood.new
  end

  # GET /elemoods/1/edit
  def edit
  end

  # POST /elemoods or /elemoods.json
  def create
    @elemood = Elemood.new(elemood_params)

    respond_to do |format|
      if @elemood.save
        format.html { redirect_to elemood_url(@elemood), notice: "Elemood was successfully created." }
        format.json { render :show, status: :created, location: @elemood }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @elemood.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /elemoods/1 or /elemoods/1.json
  def update
    respond_to do |format|
      if @elemood.update(elemood_params)
        format.html { redirect_to elemood_url(@elemood), notice: "Elemood was successfully updated." }
        format.json { render :show, status: :ok, location: @elemood }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @elemood.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elemoods/1 or /elemoods/1.json
  def destroy
    @elemood.destroy!

    respond_to do |format|
      format.html { redirect_to elemoods_url, notice: "Elemood was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_elemood
      @elemood = Elemood.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def elemood_params
      params.require(:elemood).permit(:nombre, :usuario, :correo, :bitrix24, :equipo, :tipo, :ubicacion, :procesador, :grafica, :memoria, :disco, :monitor, :mouse, :teclado, :diadema, :base_refrigerante, :celular, :otro_accesorio, :observaciones)
    end
end
