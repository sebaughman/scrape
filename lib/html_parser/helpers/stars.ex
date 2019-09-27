defmodule Scrape.HtmlParser.Stars do
  @moduledoc """
  Takes in a review and adds a point if the rating was 5 stars
  """
  
  def get_star_point(%{fakeness: fakeness, review: review}) do
    star_point = 
      Floki.find(review, ".dealership-rating")
      |> Floki.find(".rating-50")
      |> get_point()

    %{fakeness: fakeness + star_point, review: review}
  end


  defp get_point([]), do: 0
  defp get_point(_content), do: 1
    
end