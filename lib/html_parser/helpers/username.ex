defmodule Scrape.HtmlParser.Username do
  @moduledoc """
  Takes in a review and adds a point to fakeness if the username contains a number
  """
  
  def get_username_point(%{fakeness: fakeness, review: review}) do
    username_point = 
      Floki.find(review, ".margin-bottom-sm, .line-height-150")
      |> Floki.find("span")
      |> Floki.text()
      |> check_username()

    %{fakeness: fakeness + username_point, review: review}
  end

  defp check_username(name) when is_binary(name) do
    name
    |> String.replace(~r/[^\d]/, "")
    |> check_digits()
  end

  defp check_digits(""), do: 0
  defp check_digits(_numbers), do: 1
    
end