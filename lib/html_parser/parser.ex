defmodule Scrape.Parser do
  @moduledoc """
  Takes in raw html and returns the top three possibly fake reviews.
  """
  alias Scrape.HtmlParser.{Stars, Username, RepeatUsers}

  def get_reviews(html) do
    Floki.find(html, ".review-entry")
    |> get_fakeness
    |> order_by_fakeness
    |> get_top_three([], 0)

  end

  defp get_fakeness(reviews) do
    Enum.reduce(reviews, [], fn review, acc -> 
      new_review = 
      %{fakeness: 0, review: review}
      |> Stars.get_star_point()
      |> RepeatUsers.get_repeat_point(reviews)
      |> Username.get_username_point()

      acc ++ [new_review]
    end)
  end

  defp order_by_fakeness(reviews) do
    Enum.sort_by(reviews, fn(r) -> r.fakeness end, &>=/2)
  end

  defp get_top_three([head | tail], top_three, length) do
    if length == 3 do
      top_three
    else
      get_top_three(tail, top_three ++ [head.review], length + 1)
    end 
  end
end