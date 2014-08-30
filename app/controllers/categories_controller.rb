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
    @category = Category.find(params[:id])
    render('categories/show.html.erb')
  end

  def edit
    @category = Category.find(params[:id])
    render('edit.html.erb')
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(params[:category])
      flash[:notice] = "Successful Update"
      redirect_to("/categories/#{@category.id}")
    else
      render('categories/edit.html.erb')

    end
  end

  def delete

  end

end
