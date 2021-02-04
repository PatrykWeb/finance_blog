class CategoriesController < ApplicationController
  def index
    @category = Category.sort_asc
  end

  def show
  end

  def new
    @counter = Category.count + 1
  end

  def create
    @category = Category.new(category_parametr)
    if @category.save
      redirect_to(:action => 'index')
    else
      @counter = Category.count + 1
      render('new')
    end
  end

  def category_parametr
    params.require(:category).permit(:name, :position, :visible)
  end

  def edit
  end

  def delete
  end
end
