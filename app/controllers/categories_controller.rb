class CategoriesController < ApplicationController

  before_action :set_category, only: [:show]

  def new
  end

  def create
  end

  def index
      @categories = Category.all
  end

  def show
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def set_category
    @category = Category.find_by(id: params[:id])
  end

end
