# app/controllers/clientes_controller.rb

class ClientesController < ApplicationController
  before_action :set_cliente, only: %i[show edit update destroy]

  def index
    @clientes = Cliente.all
  end

  def show; end

  def new
    @cliente = Cliente.new
  end

  def edit; end

  def create
    @cliente = Cliente.new(cliente_params)

    if @cliente.save
      redirect_to @cliente, notice: 'Cliente cadastrado com sucesso.'
    else
      render :new
    end
  end

  def update
    if @cliente.update(cliente_params)
      redirect_to @cliente, notice: 'Cliente atualizado com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @cliente.destroy
    redirect_to clientes_url, notice: 'Cliente removido com sucesso.'
  end

  private

  def set_cliente
    @cliente = Cliente.find(params[:id])
  end

  def cliente_params
    params.require(:cliente).permit(:nome, :endereco, :cnpj, :telefone)
  end
end
