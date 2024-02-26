class OrcamentosController < ApplicationController
  before_action :set_orcamento, only: %i[show edit update destroy]

  # GET /orcamentos or /orcamentos.json
  def index
    @orcamentos = Orcamento.all
  end

  # GET /orcamentos/1 or /orcamentos/1.json
  def show; end
  # app/controllers/orcamentos_controller.rb
  # app/controllers/orcamentos_controller.rb

  def new
    @orcamento = Orcamento.new
    @clientes = Cliente.all.pluck(:nome, :cnpj)
    @produtos = Produto.all.pluck(:descricao, :codigo)
  end

  # GET /orcamentos/1/edit
  def edit; end

  # POST /orcamentos or /orcamentos.json
  def create
    @orcamento = Orcamento.new(orcamento_params)

    respond_to do |format|
      if @orcamento.save
        format.html { redirect_to orcamento_url(@orcamento), notice: 'Orcamento was successfully created.' }
        format.json { render :show, status: :created, location: @orcamento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @orcamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orcamentos/1 or /orcamentos/1.json
  def update
    respond_to do |format|
      if @orcamento.update(orcamento_params)
        format.html { redirect_to orcamento_url(@orcamento), notice: 'Orcamento was successfully updated.' }
        format.json { render :show, status: :ok, location: @orcamento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @orcamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orcamentos/1 or /orcamentos/1.jso

  def destroy
    @orcamento = Orcamento.find(params[:id])
    @orcamento.destroy
    redirect_to orcamentos_path, notice: 'Orcamento was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_orcamento
    @orcamento = Orcamento.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def orcamento_params
    params.require(:orcamento).permit(:nome, :cnpj, :descricao, :codigo, :quantidade, :valor)
  end
end
