class AssignsController < ApplicationController
  
  def category_to_movie
    params.inspect
    @movie = Movie.find(params[:id])
    @category = Category.find(params[:category])
    @movie.categories << @category
    flash[:notice] = "This movie has been categorized #{@category.name}."
    redirect_to("/movies/#{@movie.id}")
  end

  def category_removal
    params.inspect
    @movie = Movie.find(params[:id])
    @category = Category.find(params[:category_id])
    @movie.categories.delete(@category)
    flash[:notice] = "The tag #{@category.name} was removed."
    redirect_to("/movies/#{@movie.id}")
  end
    
end