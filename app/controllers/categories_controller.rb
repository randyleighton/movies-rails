class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @category = Category.new
    render('categories/index.html.erb')
  end

  def create

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
