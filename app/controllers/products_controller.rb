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
    @product.apply_discount_if_price_over_100
    if @product.save
      redirect_to @product, notice: 'Product was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to @product, notice: 'Produto atalizado com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_url, notice: 'Product was successfully destroyed.'
  end
  
  def apply_discount
    @product = Product.find(params[:id])
    @discounted_price = @product.price * 0.85 # 15% de desconto
    render :show # ou renderizar a view correspondente
  end

    
  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :category, :image, :quantity, :category_id, :CupomId, :nome, :discountable)
  end


  
end

  
