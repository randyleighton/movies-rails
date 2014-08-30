class AssignsController < ApplicationController
  
  def category_to_movie
    @movie = Movie.find(params[:id])
    @category = Category.find(params[:id])
    @movie.categories << @category
    flash[:notice] = "This movie has been categorized #{@category.name}."
    redirect_to("/movies/#{@movie.id}")
  end

end