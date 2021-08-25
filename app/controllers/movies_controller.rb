class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    sleep 1
    @movie = Movie.find(params[:id])
  end
end
