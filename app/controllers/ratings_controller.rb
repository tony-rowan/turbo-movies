class RatingsController < ApplicationController
  def update
    @movie = Movie.find(params[:movie_id])
    @toast = if @movie.update(rating: params[:rating])
      "Rating Added!"
    else
      "Could not apply rating, please try again later"
    end
  end
end
