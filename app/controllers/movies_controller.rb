class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new # Needed to instantiate the form_with
    render '_form'
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to movie_path(@movie), notice: 'Movie was successfully created.'

  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    # No need for app/views/movies/destroy.html.erb
    redirect_to movies_path, notice: 'Movie was successfully deleted.'
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description, :poster_url, :rating)
  end

  # def new
  #   @movie = Movie.new
  # end

  # def edit
  #   @movie = Movie.find(params[:id])
  # end

  # def destroy
  #   @movie = Movie.find(params[:id])
  #   @movie.destroy

  #   redirect_to movies_path, notice: 'Movie was successfully deleted.'
  # end

end
