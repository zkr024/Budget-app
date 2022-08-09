class CategoriesController < ApplicationController
  def index
    @categories = Category.where(author_id: current_user)
  end

  def new
    @category = Category.new
  end

  def create
    category = Category.new(category_params)
    category.author_id = current_user.id

    if category.save
      redirect_to categories_path
    else
      redirect_to new_category_path
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
