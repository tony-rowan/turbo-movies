class RatingsController < ApplicationController
  def update
    @movie = Movie.find(params[:movie_id])
    @toast = if @movie.update(rating: params[:rating])
      { message: "Rating Added!", type: :success }
    else
      { message: "Could not apply rating, please try again later", type: :error }
    end
  end
end
