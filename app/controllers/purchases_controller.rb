class PurchasesController < ApplicationController
  before_action :authenticate_user!

  def index; 
    @category = Category.find_by_id(params[:category_id])
  end

  def new
    @purchase = Purchase.new
  end
end
