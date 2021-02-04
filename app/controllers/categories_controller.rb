class CategoriesController < ApplicationController
  def index
    @category = Category.sort_asc
  end

  def show
  end

  def new
  end

  def edit
  end

  def delete
  end
end
