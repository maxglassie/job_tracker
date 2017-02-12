class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def index
    @categories = Category.all
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = "#{@category.name} added!"
      redirect_to category_path(@category)
    else
      render :new
    end
  end

  def show
    category = Category.find(params[:id])
    redirect_to category_path(category)
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end