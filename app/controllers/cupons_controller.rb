class CuponsController < ApplicationController
    before_action :set_cupom, only: [:show, :edit, :update, :destroy]
  
    def index
      @cupons = Cupom.all
    end
  
    def show
    end
  
    def new
      @cupom = Cupom.new
    end
  
    def create
      @cupom = Cupom.new(cupom_params)
      if @cupom.save
        cupons_url @cupom, notice: 'Cupom criado com sucesso.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @cupom.update(cupom_params)
        redirect_to @cupom, notice: 'Cupom atualizado com sucesso.'
      else
        render :edit
      end
    end
  
    def destroy
      @cupom.destroy
      redirect_to cupons_url, notice: 'Cupom excluído com sucesso.'
    end
  
    private
  
    def set_cupom
      @cupom = Cupom.find(params[:id])
    end
  
    def cupom_params
      params.require(:cupom).permit(:nome, :validade, :percentual_desconto, :cupons)
    end
  end
  