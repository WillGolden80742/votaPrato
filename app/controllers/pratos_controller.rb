class PratosController < ApplicationController
  before_action :set_prato, only: %i[ show edit update destroy ]

  # GET /pratos or /pratos.json
  def index
    @pratos = Prato.all
  end

  # GET /pratos/1 or /pratos/1.json
  def show
  end

  # GET /pratos/new
  def new
    preparar_form
    @prato = Prato.new
    if params[:restaurante]
      @qualificacao.restaurante = Restaurante.find(params[:restaurante])
    end
  
    respond_to do |format|
      format.html #  new.html.erb
      format.xml { render xml: @qualificacao }
    end    
  end

  # GET /pratos/1/edit
  def edit
    preparar_form
  end

  # POST /pratos or /pratos.json
  def create
    @prato = Prato.new(prato_params)
    respond_to do |format|
      if @prato.save
        format.html { redirect_to prato_url(@prato), notice: "Prato was successfully created." }
        format.json { render :show, status: :created, location: @prato }
      else
        preparar_form
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pratos/1 or /pratos/1.json
  def update
    respond_to do |format|
      if @prato.update(prato_params)
        format.html { redirect_to prato_url(@prato), notice: "Prato was successfully updated." }
        format.json { render :show, status: :ok, location: @prato }
      else
        preparar_form
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pratos/1 or /pratos/1.json
  def destroy
    @prato.destroy

    respond_to do |format|
      format.html { redirect_to pratos_url, notice: "Prato was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prato
      @prato = Prato.find(params[:id])
    end
    
    def preparar_form
      @clientes = Cliente.order :nome
      @restaurantes = Restaurante.order :nome
    end    

    # Only allow a list of trusted parameters through.
    def prato_params
      params.require(:prato).permit(:restaurante_id, :nome)
    end
end
