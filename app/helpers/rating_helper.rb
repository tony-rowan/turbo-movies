module RatingHelper
  def star_rating_class(movie, index)
    if index < movie.rating
      "fill-yellow-400 stroke-yellow-400"
    else
      "fill-transparent stroke-gray-400"
    end
  end
end
