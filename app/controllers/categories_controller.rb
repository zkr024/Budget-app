class CategoriesController < ApplicationController
  def index
    @categories = Category.where(author_id: current_user)
  end

  def new
    @category = Category.new
  end
end
