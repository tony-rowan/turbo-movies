class RatingsController < ApplicationController
  def update
    @movie = Movie.find(params[:movie_id])

    if @movie.update(rating: params[:rating])
      flash.now[:notice] = "Quote was successfully updated."
    else
      flash.now[:error] = "Could not apply rating, please try again later"
    end
  end
end
