class RatingsController < ApplicationController
  def update
    @movie = Movie.find(params[:movie_id])
    @toast = if @movie.update(rating: params[:rating])
      Toast.new(type: :success, message: "Rating Added!")
    else
      Toast.new(type: :error, message: "Could not apply rating, please try again later")
    end
  end
end
