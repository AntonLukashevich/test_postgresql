class ModelkasController < ApplicationController
  before_action :set_modelka, only: %i[ show edit update destroy ]

  # GET /modelkas or /modelkas.json
  def index
    @modelkas = Modelka.all
  end

  # GET /modelkas/1 or /modelkas/1.json
  def show
  end

  # GET /modelkas/new
  def new
    @modelka = Modelka.new
  end

  # GET /modelkas/1/edit
  def edit
  end

  # POST /modelkas or /modelkas.json
  def create
    @modelka = Modelka.new(modelka_params)

    respond_to do |format|
      if @modelka.save
        format.html { redirect_to @modelka, notice: "Modelka was successfully created." }
        format.json { render :show, status: :created, location: @modelka }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @modelka.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /modelkas/1 or /modelkas/1.json
  def update
    respond_to do |format|
      if @modelka.update(modelka_params)
        format.html { redirect_to @modelka, notice: "Modelka was successfully updated." }
        format.json { render :show, status: :ok, location: @modelka }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @modelka.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modelkas/1 or /modelkas/1.json
  def destroy
    @modelka.destroy
    respond_to do |format|
      format.html { redirect_to modelkas_url, notice: "Modelka was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modelka
      @modelka = Modelka.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def modelka_params
      params.require(:modelka).permit(:name)
    end
end
