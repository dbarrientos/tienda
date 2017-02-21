class ProductsController < ApplicationController
  def index
  	if params[:search].present?
  		@productos = Product.where("name like ? ", "%#{params[:search]}%")
  	elsif params[:price].present?
  		@productos = Product.where(price: params[:price].to_i)
  	else
  		@productos = Product.all
  	end
  end
  def index_categoria
  	
  end
end
