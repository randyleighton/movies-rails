class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    @movie = Movie.new
    render('movies/index.html.erb')
  end

  def create
    @movies = Movie.all
    @movie = Movie.new(params[:movie])
    if @movie.save
      flash[:notice] = "Successful Entry."
      redirect_to('/movies')
    else
      render('movies/index.html.erb')
    end
  end

  def show
    @movies = Movie.all
    @movie = Movie.find(params[:id])
    render('movies/show.html.erb')
  end

  def edit
    @movies= Movie.all
    @movie = Movie.find(params[:id])
    render('movies/edit.html.erb')
  end

  def update
    @movie = Movie.find(params[:id])
    if @move.update(params[:id])
      flash[:notice] = "Successful Update."
      redirect_to('movies/show.html.erb')
    else
      render('edit.html.erb')
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:notice] = "Successful Update."
    redirect_to('/movies')
  end

end
