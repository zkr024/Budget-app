class PurchasesController < ApplicationController
  before_action :authenticate_user!

  def index
    @category = Category.where(author_id: current_user, id: params[:category_id])
  end

  def new
    @purchase = Purchase.new
    @category = Category.where(author_id: current_user)
  end

  def create
    purchase = Purchase.new(purchase_params)
    purchase.author_id = current_user.id

    if purchase.save
      redirect_to category_purchases_path(params[:category_id])
    else
      redirect_to new_category_purchase_path(params[:category_id])
    end
  end

  private

  def purchase_params
    params.require(:purchase).permit(:name, :amount, category_ids: [])
  end
end
