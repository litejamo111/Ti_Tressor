class GblabsController < ApplicationController
  before_action :set_gblab, only: %i[ show edit update destroy ]

  # GET /gblabs or /gblabs.json
  def index
    @gblabs = Gblab.all
  end

  # GET /gblabs/1 or /gblabs/1.json
  def show
  end

  # GET /gblabs/new
  def new
    @gblab = Gblab.new
  end

  # GET /gblabs/1/edit
  def edit
  end

  # POST /gblabs or /gblabs.json
  def create
    @gblab = Gblab.new(gblab_params)

    respond_to do |format|
      if @gblab.save
        format.html { redirect_to gblab_url(@gblab), notice: "Gblab was successfully created." }
        format.json { render :show, status: :created, location: @gblab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gblab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gblabs/1 or /gblabs/1.json
  def update
    respond_to do |format|
      if @gblab.update(gblab_params)
        format.html { redirect_to gblab_url(@gblab), notice: "Gblab was successfully updated." }
        format.json { render :show, status: :ok, location: @gblab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gblab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gblabs/1 or /gblabs/1.json
  def destroy
    @gblab.destroy!

    respond_to do |format|
      format.html { redirect_to gblabs_url, notice: "Gblab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gblab
      @gblab = Gblab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gblab_params
      params.require(:gblab).permit(:nombre, :usuario, :correo, :bitrix24, :equipo, :tipo, :ubicacion, :procesador, :grafica, :memoria, :disco, :monitor, :mouse, :teclado, :diadema, :base_refrigerante, :celular, :otro_accesorio, :observaciones)
    end
end
