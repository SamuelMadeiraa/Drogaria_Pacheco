class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
   
  end
  

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product, notice: 'Product was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: 'Product was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_url, notice: 'Product was successfully destroyed.'
  end

  def calcular_desconto
    # Supondo que você tenha parâmetros, como o valor original e o percentual de desconto,
    # que foram enviados via requisição HTTP, você pode acessá-los usando params.
    valor_original = params[:valor_original].to_f
    percentual_desconto = params[:percentual_desconto].to_f

    # Certifique-se de que o percentual_desconto está na forma de 0 a 100
    percentual_desconto /= 100.0 if percentual_desconto > 1

    # Calcula o desconto
    desconto = valor_original * percentual_desconto

    # Retorna o resultado como JSON, por exemplo
    render json: { valor_com_desconto: valor_original - desconto }
  end
  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :category, :image, :quantity, :category_id, :CupomId)
  end

  
end

