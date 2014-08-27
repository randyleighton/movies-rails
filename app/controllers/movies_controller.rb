class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    @movie = Movie.new
    render('movies/index.html.erb')
  end

  # def new
  #   @movie = Movie.new
  #   render('movies/new.html.erb')
  # end

  def create
    @movie = Movie.create(params[:movie])
    if @movie.valid?
      render('movies/success.html.erb')
    else
      render('movies/new.html.erb')
    end
  end

  def show
    @movie = Movie.find(params[:id])
    render('movies/show.html.erb')
  end

  def edit
    @movie = Movie.find(params[:id])
    render('movies/edit.html.erb')
  end

  def update
    @movie = Movie.find(params[:id])
    if @move.update(params[:id])
      render('success.html.erb')
    else
      render('edit.html.erb')
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    render('destroy.html.erb')
  end

end
