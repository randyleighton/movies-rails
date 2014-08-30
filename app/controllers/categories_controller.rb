class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @category = Category.new
    render('categories/index.html.erb')
  end

  def create
    @categories = Category.all
    @category = Category.new(params[:category])
    if @category.save
      flash[:notice] = "Successful entry."
      redirect_to('/categories')
    else
      render('categories/index.html.erb')
    end
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
