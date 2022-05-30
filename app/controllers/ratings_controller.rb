class RatingsController < ApplicationController
  def update
    @movie = Movie.find(params[:movie_id])

    respond_to do |format|
      if @movie.update(rating: params[:rating])
        format.html { redirect_to @movie, notice: "Rating Applied!" }
        format.turbo_stream { flash.now[:notice] = "Rating Applied!" }
      else
        format.html { redirect_to @movie, notice: "Could not apply rating, please try again later" }
        format.turbo_steam { flash.now[:error] = "Could not apply rating, please try again later" }
      end
    end
  end
end
