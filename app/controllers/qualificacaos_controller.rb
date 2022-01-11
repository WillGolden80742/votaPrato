class QualificacaosController < ApplicationController
  before_action :set_qualificacao, only: %i[show edit update destroy]

  # GET /qualificacaos
  # GET /qualificacaos.json
  def index
    @qualificacaos = Qualificacao.all
  end

  # GET /qualificacaos/1
  # GET /qualificacaos/1.json
  def show; end

  # GET /qualificacaos/new
  def new 
    preparar_form
    @qualificacao = Qualificacao.new
    @qualificacao.cliente = Cliente.find(params[:cliente]) if params[:cliente]
    if params[:restaurante]
      @qualificacao.restaurante = Restaurante.find(params[:restaurante])
    end
    if params[:prato]
      @qualificacao.prato = Prato.find(params[:prato])
    end
    respond_to do |format|
      format.html #  new.html.erb
      format.xml { render xml: @qualificacao }
    end
  end

  # GET /qualificacaos/1/edit
  def edit
    preparar_form
  end

  # POST /qualificacaos
  # POST /qualificacaos.json
  def create
    @qualificacao = Qualificacao.new(qualificacao_params)

    respond_to do |format|
      if @qualificacao.save
        format.html { redirect_to @qualificacao, notice: 'Qualificacao was successfully created.' }
        format.json { render :show, status: :created, location: @qualificacao }
      else
        preparar_form
        format.html { render :new }
        format.json { render json: @qualificacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qualificacaos/1
  # PATCH/PUT /qualificacaos/1.json
  def update
    @qualificacao = Qualificacao.find(params[:id])

    respond_to do |format|
      if @qualificacao.update(qualificacao_params)
        format.html { redirect_to @qualificacao, notice: 'Qualificacao foi atualizada com sucesso.' }
        format.json { head :no_content }
      else
        preparar_form
        format.html { render action: 'edit' }
        format.json { render json: @qualificacao.errors, status: :unprocessable_entity }
        end
    end
  end

  # DELETE /qualificacaos/1
  # DELETE /qualificacaos/1.json
  def destroy
    @qualificacao.destroy
    respond_to do |format|
      format.html { redirect_to qualificacaos_url, notice: 'Qualificacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_qualificacao
    @qualificacao = Qualificacao.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def qualificacao_params
    params.require(:qualificacao).permit(:cliente_id, :restaurante_id, :prato_id, :comentario, :nota, :valor_gasto)
  end

  private

  def preparar_form
    @pratos = Prato.order :nome
    @clientes = Cliente.order :nome
    @restaurantes = Restaurante.order :nome
  end
end