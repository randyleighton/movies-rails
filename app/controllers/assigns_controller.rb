class AssignsController < ApplicationController
  
  def tag_to_recipe
    @movie = Movie.find(params[:id])
    @category = Category.findparams([:id])
    @movie.categories << @category
    flash[:notice] = "This movie has been categorized #{@category.name}."
    redirect_to("/movies/#{@movie.id}")
  end

end