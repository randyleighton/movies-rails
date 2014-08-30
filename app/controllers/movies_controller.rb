class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    @movie = Movie.new
    render('movies/index.html.erb')
  end

  def create
    @movies = Movie.all
    @categories = Category.all
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
    @categories = Category.all
    @movie = Movie.find(params[:id])
    render('movies/show.html.erb')
  end

  def edit
    @movies= Movie.all
    @categories = Category.all
    @movie = Movie.find(params[:id])
    render('movies/edit.html.erb')
  end

  def update
    @categories = Category.all
    @movie = Movie.find(params[:id])
    if @movie.update(params[:movie])
      flash[:notice] = "Successful Update."
      redirect_to("/movies/#{@movie.id}")
    else
      render('edit.html.erb')
    end
  end

  def delete
    @movie = Movie.find(params[:id])
    @movie.delete
    flash[:notice] = "Successful Delete."
    redirect_to('/movies')
  end

end
