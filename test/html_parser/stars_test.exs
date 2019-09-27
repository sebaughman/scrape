defmodule StarsTest do
  use ExUnit.Case
  alias Scrape.HtmlParser.Stars
  alias Factories.ReviewFactory

  test "it returns an added point to fakeness if dealership-rating is 50" do
    review = ReviewFactory.one_review_50_rating()

    assert Stars.get_star_point(%{fakeness: 0, review: review}) == %{fakeness: 1, review: review}
  end

  test "it does not add a point to fakeness if dealership-rating is less than 50" do
    review = ReviewFactory.one_review_40_rating()

    assert Stars.get_star_point(%{fakeness: 0, review: review}) == %{fakeness: 0, review: review}
  end

end