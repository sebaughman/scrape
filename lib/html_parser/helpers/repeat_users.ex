defmodule Scrape.HtmlParser.RepeatUsers do
  @moduledoc """
  Takes in a review and all reviews. Adds a point to fakeness if the user has left more than one comment in the amount of pages run
  """
  
  def get_repeat_point(%{fakeness: fakeness, review: review}, reviews) do
    case is_user_repeated(review, reviews) do
      2 -> 
        %{fakeness: fakeness + 1, review: review}
      _acc -> 
        %{fakeness: fakeness, review: review}
    end
  end

  defp is_user_repeated(review, reviews) do
    username = get_username(review)

    Enum.reduce_while(reviews, 0, fn other_review, acc -> 
      other_username = get_username(other_review)
      username_point = get_username_point(username, other_username)

      if acc < 2, do: {:cont, acc + username_point}, else: {:halt, acc}
    end)
  end

  defp get_username(review) do
    Floki.find(review, ".margin-bottom-sm, .line-height-150")
    |> Floki.find("span")
    |> Floki.text()
  end

  defp get_username_point(username, other_username) when username == other_username, do: 1
  defp get_username_point(_username, _other_username), do: 0
    
end