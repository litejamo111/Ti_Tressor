class CobesController < ApplicationController
  before_action :set_cobe, only: %i[ show edit update destroy ]

  # GET /cobes or /cobes.json
  def index
    @cobes = Cobe.all
  end

  # GET /cobes/1 or /cobes/1.json
  def show
  end

  # GET /cobes/new
  def new
    @cobe = Cobe.new
  end

  # GET /cobes/1/edit
  def edit
  end

  # POST /cobes or /cobes.json
  def create
    @cobe = Cobe.new(cobe_params)

    respond_to do |format|
      if @cobe.save
        format.html { redirect_to cobe_url(@cobe), notice: "Cobe was successfully created." }
        format.json { render :show, status: :created, location: @cobe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cobe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cobes/1 or /cobes/1.json
  def update
    respond_to do |format|
      if @cobe.update(cobe_params)
        format.html { redirect_to cobe_url(@cobe), notice: "Cobe was successfully updated." }
        format.json { render :show, status: :ok, location: @cobe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cobe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cobes/1 or /cobes/1.json
  def destroy
    @cobe.destroy!

    respond_to do |format|
      format.html { redirect_to cobes_url, notice: "Cobe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cobe
      @cobe = Cobe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cobe_params
      params.require(:cobe).permit(:nombre, :usuario, :correo, :bitrix24, :equipo, :tipo, :ubicacion, :procesador, :grafica, :memoria, :disco, :monitor, :mouse, :teclado, :diadema, :base_refrigerante, :celular, :otro_accesorio, :observaciones)
    end
end
