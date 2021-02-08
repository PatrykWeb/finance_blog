class CategoriesController < ApplicationController

  layout 'admin'

  def index
    @category = Category.sort_asc
  end

  def show
    find_id
  end

  def new
    @counter = Category.count + 1
    @category = Category.new({:name => "Podaj nazwe kategorii"})
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

  def edit
    find_id
    @count_category = Category.count
  end

  def edit_category
    find_id
    if find_id.update(category_parametr)
      redirect_to(:action => "show", :id => find_id)
    else
      @count_category
    end
  end

  def delete
    find_id
  end

  def delete_category
    category = Category.find(params[:id]).destroy
    redirect_to(:action => "index")
  end

  def find_id
     @category = Category.find(params[:id])
  end
  def category_parametr
    params.require(:category).permit(:name, :position, :visible)
  end
end

