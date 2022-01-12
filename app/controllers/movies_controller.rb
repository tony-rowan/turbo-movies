class MoviesController < ApplicationController
  def index
    @movies = movies
    @query = query
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    @toast = if @movie.update(rating: params[:movie][:rating])
      :success
    else
      :warning
    end

    render :show
  end

  private

  def movies
    if query
      Movie.where("title ILIKE ?", "%#{query}%")
    else
      Movie.all
    end
  end

  def query
    params[:query]
  end
end
