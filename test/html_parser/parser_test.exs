defmodule ParserTest do
  use ExUnit.Case
  alias Scrape.Parser
  alias Factories.ReviewFactory

  test "it returns an array of three" do
    top_three = Parser.get_reviews(ReviewFactory.ten_reviews())

    assert length(top_three) == 3
  end

  test "it returns them in order of fakeness" do
    [head | tail] = Parser.get_reviews(ReviewFactory.ten_reviews())
    [_next_head | last] = tail

    assert get_username(head) == "- awhite211"
    assert get_username(last) == "- bigbug66"
  end


  defp get_username(review) do
    Floki.find(review, ".margin-bottom-sm, .line-height-150")
    |> Floki.find("span")
    |> Floki.text()
  end

end